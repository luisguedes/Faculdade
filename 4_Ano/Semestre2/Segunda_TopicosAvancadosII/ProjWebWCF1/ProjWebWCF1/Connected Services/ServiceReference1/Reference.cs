﻿//------------------------------------------------------------------------------
// <auto-generated>
//     O código foi gerado por uma ferramenta.
//     Versão de Tempo de Execução:4.0.30319.42000
//
//     As alterações ao arquivo poderão causar comportamento incorreto e serão perdidas se
//     o código for gerado novamente.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjWebWCF1.ServiceReference1 {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="EntTesteCadastro", Namespace="http://schemas.datacontract.org/2004/07/Entidade")]
    [System.SerializableAttribute()]
    public partial class EntTesteCadastro : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int CodigoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NomeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string TelefoneField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int Codigo {
            get {
                return this.CodigoField;
            }
            set {
                if ((this.CodigoField.Equals(value) != true)) {
                    this.CodigoField = value;
                    this.RaisePropertyChanged("Codigo");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Nome {
            get {
                return this.NomeField;
            }
            set {
                if ((object.ReferenceEquals(this.NomeField, value) != true)) {
                    this.NomeField = value;
                    this.RaisePropertyChanged("Nome");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Telefone {
            get {
                return this.TelefoneField;
            }
            set {
                if ((object.ReferenceEquals(this.TelefoneField, value) != true)) {
                    this.TelefoneField = value;
                    this.RaisePropertyChanged("Telefone");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.IServico")]
    public interface IServico {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServico/Consultar", ReplyAction="http://tempuri.org/IServico/ConsultarResponse")]
        ProjWebWCF1.ServiceReference1.EntTesteCadastro[] Consultar(string nome);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServico/Consultar", ReplyAction="http://tempuri.org/IServico/ConsultarResponse")]
        System.Threading.Tasks.Task<ProjWebWCF1.ServiceReference1.EntTesteCadastro[]> ConsultarAsync(string nome);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IServicoChannel : ProjWebWCF1.ServiceReference1.IServico, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServicoClient : System.ServiceModel.ClientBase<ProjWebWCF1.ServiceReference1.IServico>, ProjWebWCF1.ServiceReference1.IServico {
        
        public ServicoClient() {
        }
        
        public ServicoClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServicoClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicoClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicoClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public ProjWebWCF1.ServiceReference1.EntTesteCadastro[] Consultar(string nome) {
            return base.Channel.Consultar(nome);
        }
        
        public System.Threading.Tasks.Task<ProjWebWCF1.ServiceReference1.EntTesteCadastro[]> ConsultarAsync(string nome) {
            return base.Channel.ConsultarAsync(nome);
        }
    }
}
