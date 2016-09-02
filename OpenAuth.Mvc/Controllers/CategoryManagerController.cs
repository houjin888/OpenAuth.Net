﻿
using System;
using System.Web.Mvc;
using Infrastructure;
using OpenAuth.App;
using OpenAuth.Domain;
using OpenAuth.Mvc.Models;

namespace OpenAuth.Mvc.Controllers
{
 public class CategoryManagerController : BaseController
    {
        private CategoryManagerApp _app;

        public CategoryManagerController()
        {
            _app = AutofacExt.GetFromFac<CategoryManagerApp>();
        }

        //
        // GET: /UserManager/
        [Authenticate]
        public ActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 加载分类下面的所有分类
        /// </summary>
        public string Load(Guid parentId, int pageCurrent = 1, int pageSize = 30)
        {
            return JsonHelper.Instance.Serialize(_app.Load(parentId, pageCurrent, pageSize));
        }

     public string LoadForTree()
     {
         return JsonHelper.Instance.Serialize(_app.LoadAll());
     }

        //添加或修改Category
        [HttpPost]
        public string Add(Category model)
        {
            try
            {
                _app.AddOrUpdate(model);
                
            }
            catch (Exception ex)
            {
                BjuiResponse.statusCode = "300";
                BjuiResponse.message = ex.Message;
            }
            return JsonHelper.Instance.Serialize(BjuiResponse);
        }

        public string Delete(Guid Id)
        {
            try
            {
                _app.Delete(Id);
            }
            catch (Exception e)
            {
                BjuiResponse.statusCode = "300";
                BjuiResponse.message = e.Message;
            }

            return JsonHelper.Instance.Serialize(BjuiResponse);
        }

        
    }
}