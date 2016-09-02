﻿using System;
using System.Collections.Generic;
using System.Linq;

namespace OpenAuth.Domain.Interface
{
    public interface ICategoryRepository :IRepository<Category>
    {
        IEnumerable<Category> LoadCategorys(int pageindex, int pagesize);

        IEnumerable<Category> LoadInOrgs(params Guid[] orgId);
        int GetCategoryCntInOrgs(params Guid[] orgIds);
        IEnumerable<Category> LoadInOrgs(int pageindex, int pagesize, params Guid[] orgIds);
        
        void Delete(Guid id);

    }
}