﻿//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
//     Author:Yubao Li
// </autogenerated>
//------------------------------------------------------------------------------

using System;

namespace OpenAuth.Domain
{
    /// <summary>
	/// 功能模块表
	/// </summary>
    public partial class Module:Entity
    {
        public Module()
        {
            this.CascadeId= string.Empty;
          this.Name= string.Empty;
          this.Url= string.Empty;
          this.HotKey= string.Empty;
          this.IconName= string.Empty;
          this.Status= 0;
          this.ParentName= string.Empty;
          this.Vector= string.Empty;
          this.SortNo= 0;
        }

        /// <summary>
	    /// 节点语义ID
	    /// </summary>
        public string CascadeId { get; set; }
        /// <summary>
	    /// 功能模块名称
	    /// </summary>
        public string Name { get; set; }
        /// <summary>
	    /// 主页面URL
	    /// </summary>
        public string Url { get; set; }
        /// <summary>
	    /// 热键
	    /// </summary>
        public string HotKey { get; set; }
        /// <summary>
	    /// 父节点流水号
	    /// </summary>
        public Guid? ParentId { get; set; }
        /// <summary>
	    /// 是否叶子节点
	    /// </summary>
        public bool IsLeaf { get; set; }
        /// <summary>
	    /// 是否自动展开
	    /// </summary>
        public bool IsAutoExpand { get; set; }
        /// <summary>
	    /// 节点图标文件名称
	    /// </summary>
        public string IconName { get; set; }
        /// <summary>
	    /// 当前状态
	    /// </summary>
        public int Status { get; set; }
        /// <summary>
	    /// 父节点名称
	    /// </summary>
        public string ParentName { get; set; }
        /// <summary>
	    /// 矢量图标
	    /// </summary>
        public string Vector { get; set; }
        /// <summary>
	    /// 排序号
	    /// </summary>
        public int SortNo { get; set; }

    }
}