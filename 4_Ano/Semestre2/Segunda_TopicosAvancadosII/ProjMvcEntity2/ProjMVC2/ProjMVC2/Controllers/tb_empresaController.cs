using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ProjMVC2;

namespace ProjMVC2.Controllers
{
    public class tb_empresaController : Controller
    {
        private bdmvc2Entities5 db = new bdmvc2Entities5();

        // GET: tb_empresa
        public ActionResult Index()
        {
            return View(db.tb_empresa.ToList());
        }

        // GET: tb_empresa/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tb_empresa tb_empresa = db.tb_empresa.Find(id);
            if (tb_empresa == null)
            {
                return HttpNotFound();
            }
            return View(tb_empresa);
        }

        // GET: tb_empresa/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: tb_empresa/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,nome,qtdfuncionarios,endereço")] tb_empresa tb_empresa)
        {
            if (ModelState.IsValid)
            {
                db.tb_empresa.Add(tb_empresa);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tb_empresa);
        }

        // GET: tb_empresa/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tb_empresa tb_empresa = db.tb_empresa.Find(id);
            if (tb_empresa == null)
            {
                return HttpNotFound();
            }
            return View(tb_empresa);
        }

        // POST: tb_empresa/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,nome,qtdfuncionarios,endereço")] tb_empresa tb_empresa)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tb_empresa).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tb_empresa);
        }

        // GET: tb_empresa/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tb_empresa tb_empresa = db.tb_empresa.Find(id);
            if (tb_empresa == null)
            {
                return HttpNotFound();
            }
            return View(tb_empresa);
        }

        // POST: tb_empresa/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tb_empresa tb_empresa = db.tb_empresa.Find(id);
            db.tb_empresa.Remove(tb_empresa);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
