﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Data.EntityClient;
using System.ComponentModel;
using System.Xml.Serialization;
using System.Runtime.Serialization;

[assembly: EdmSchemaAttribute()]

namespace fix.Models
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class fixdb : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new fixdb object using the connection string found in the 'fixdb' section of the application configuration file.
        /// </summary>
        public fixdb() : base("name=fixdb", "fixdb")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new fixdb object.
        /// </summary>
        public fixdb(string connectionString) : base(connectionString, "fixdb")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new fixdb object.
        /// </summary>
        public fixdb(EntityConnection connection) : base(connection, "fixdb")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<fx_doc> fx_docs
        {
            get
            {
                if ((_fx_docs == null))
                {
                    _fx_docs = base.CreateObjectSet<fx_doc>("fx_docs");
                }
                return _fx_docs;
            }
        }
        private ObjectSet<fx_doc> _fx_docs;

        #endregion
        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the fx_docs EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddTofx_docs(fx_doc fx_doc)
        {
            base.AddObject("fx_docs", fx_doc);
        }

        #endregion
        #region Function Imports
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        /// <param name="name">No Metadata Documentation available.</param>
        /// <param name="author">No Metadata Documentation available.</param>
        public int createNew(global::System.String name, global::System.String author)
        {
            ObjectParameter nameParameter;
            if (name != null)
            {
                nameParameter = new ObjectParameter("name", name);
            }
            else
            {
                nameParameter = new ObjectParameter("name", typeof(global::System.String));
            }
    
            ObjectParameter authorParameter;
            if (author != null)
            {
                authorParameter = new ObjectParameter("author", author);
            }
            else
            {
                authorParameter = new ObjectParameter("author", typeof(global::System.String));
            }
    
            return base.ExecuteFunction("createNew", nameParameter, authorParameter);
        }

        #endregion
    }
    

    #endregion
    
    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="fixdbModel", Name="fx_doc")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class fx_doc : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new fx_doc object.
        /// </summary>
        /// <param name="id">Initial value of the id property.</param>
        /// <param name="name">Initial value of the name property.</param>
        /// <param name="date">Initial value of the date property.</param>
        public static fx_doc Createfx_doc(global::System.Int32 id, global::System.String name, global::System.DateTime date)
        {
            fx_doc fx_doc = new fx_doc();
            fx_doc.id = id;
            fx_doc.name = name;
            fx_doc.date = date;
            return fx_doc;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 id
        {
            get
            {
                return _id;
            }
            set
            {
                if (_id != value)
                {
                    OnidChanging(value);
                    ReportPropertyChanging("id");
                    _id = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("id");
                    OnidChanged();
                }
            }
        }
        private global::System.Int32 _id;
        partial void OnidChanging(global::System.Int32 value);
        partial void OnidChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String name
        {
            get
            {
                string shortname = _name;
                if (_name.Length > 30) shortname = _name.Substring(0, 30) + "..";
                return shortname;
            }
            set
            {
                OnnameChanging(value);
                ReportPropertyChanging("name");
                _name = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("name");
                OnnameChanged();
            }
        }
        private global::System.String _name;
        partial void OnnameChanging(global::System.String value);
        partial void OnnameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.DateTime date
        {
            get
            {
                return _date;
            }
            set
            {
                OndateChanging(value);
                ReportPropertyChanging("date");
                _date = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("date");
                OndateChanged();
            }
        }
        private global::System.DateTime _date;
        partial void OndateChanging(global::System.DateTime value);
        partial void OndateChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String author
        {
            get
            {
                return _author;
            }
            set
            {
                OnauthorChanging(value);
                ReportPropertyChanging("author");
                _author = StructuralObject.SetValidValue(value, true);
                ReportPropertyChanged("author");
                OnauthorChanged();
            }
        }
        private global::System.String _author;
        partial void OnauthorChanging(global::System.String value);
        partial void OnauthorChanged();

        #endregion
    
    }

    #endregion
    
}
