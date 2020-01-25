﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
namespace JA.Attack
{
	/// <summary>
	/// DomainModel AttackDomainModel
	/// Description for JA.Attack.Attack
	/// </summary>
	[DslDesign::DisplayNameResource("JA.Attack.AttackDomainModel.DisplayName", typeof(global::JA.Attack.AttackDomainModel), "JA.Attack.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("JA.Attack.AttackDomainModel.Description", typeof(global::JA.Attack.AttackDomainModel), "JA.Attack.GeneratedCode.DomainModelResx")]
	[global::System.CLSCompliant(true)]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.CoreDomainModel))]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.Diagrams.CoreDesignSurfaceDomainModel))]
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
	[DslModeling::DomainObjectId("31df06e6-d6f3-4a3d-b307-22198ee33c3d")]
	public partial class AttackDomainModel : DslModeling::DomainModel
	{
		#region Constructor, domain model Id
	
		/// <summary>
		/// AttackDomainModel domain model Id.
		/// </summary>
		public static readonly global::System.Guid DomainModelId = new global::System.Guid(0x31df06e6, 0xd6f3, 0x4a3d, 0xb3, 0x07, 0x22, 0x19, 0x8e, 0xe3, 0x3c, 0x3d);
	
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="store">Store containing the domain model.</param>
		public AttackDomainModel(DslModeling::Store store)
			: base(store, DomainModelId)
		{
			// Call the partial method to allow any required serialization setup to be done.
			this.InitializeSerialization(store);		
		}
		
	
		///<Summary>
		/// Defines a partial method that will be called from the constructor to
		/// allow any necessary serialization setup to be done.
		///</Summary>
		///<remarks>
		/// For a DSL created with the DSL Designer wizard, an implementation of this 
		/// method will be generated in the GeneratedCode\SerializationHelper.cs class.
		///</remarks>
		partial void InitializeSerialization(DslModeling::Store store);
	
	
		#endregion
		#region Domain model reflection
			
		/// <summary>
		/// Gets the list of generated domain model types (classes, rules, relationships).
		/// </summary>
		/// <returns>List of types.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override global::System.Type[] GetGeneratedDomainModelTypes()
		{
			return new global::System.Type[]
			{
				typeof(NamedElement),
				typeof(AttackGraph),
				typeof(FlowElement),
				typeof(Task),
				typeof(StartPoint),
				typeof(Endpoint),
				typeof(MergeBranch),
				typeof(Synchronization),
				typeof(State),
				typeof(Condition),
				typeof(Flow),
				typeof(AttackGraphHasFlowElements),
				typeof(TaskHasPreConditions),
				typeof(StateHasPostConditions),
				typeof(AttackDiagram),
				typeof(FlowConnector),
				typeof(SyncBarShape),
				typeof(StateShape),
				typeof(TaskShape),
				typeof(MergeBranchShape),
				typeof(EndShape),
				typeof(StartShape),
				typeof(global::JA.Attack.FixUpDiagram),
				typeof(global::JA.Attack.ConnectorRolePlayerChanged),
				typeof(global::JA.Attack.CompartmentItemAddRule),
				typeof(global::JA.Attack.CompartmentItemDeleteRule),
				typeof(global::JA.Attack.CompartmentItemRolePlayerChangeRule),
				typeof(global::JA.Attack.CompartmentItemRolePlayerPositionChangeRule),
				typeof(global::JA.Attack.CompartmentItemChangeRule),
			};
		}
		/// <summary>
		/// Gets the list of generated domain properties.
		/// </summary>
		/// <returns>List of property data.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override DomainMemberInfo[] GetGeneratedDomainProperties()
		{
			return new DomainMemberInfo[]
			{
				new DomainMemberInfo(typeof(NamedElement), "Name", NamedElement.NameDomainPropertyId, typeof(NamedElement.NamePropertyHandler)),
				new DomainMemberInfo(typeof(FlowElement), "Description", FlowElement.DescriptionDomainPropertyId, typeof(FlowElement.DescriptionPropertyHandler)),
			};
		}
		/// <summary>
		/// Gets the list of generated domain roles.
		/// </summary>
		/// <returns>List of role data.</returns>
		protected sealed override DomainRolePlayerInfo[] GetGeneratedDomainRoles()
		{
			return new DomainRolePlayerInfo[]
			{
				new DomainRolePlayerInfo(typeof(Flow), "FlowFrom", Flow.FlowFromDomainRoleId),
				new DomainRolePlayerInfo(typeof(Flow), "FlowTo", Flow.FlowToDomainRoleId),
				new DomainRolePlayerInfo(typeof(AttackGraphHasFlowElements), "AttackGraph", AttackGraphHasFlowElements.AttackGraphDomainRoleId),
				new DomainRolePlayerInfo(typeof(AttackGraphHasFlowElements), "FlowElement", AttackGraphHasFlowElements.FlowElementDomainRoleId),
				new DomainRolePlayerInfo(typeof(TaskHasPreConditions), "Task", TaskHasPreConditions.TaskDomainRoleId),
				new DomainRolePlayerInfo(typeof(TaskHasPreConditions), "Condition", TaskHasPreConditions.ConditionDomainRoleId),
				new DomainRolePlayerInfo(typeof(StateHasPostConditions), "State", StateHasPostConditions.StateDomainRoleId),
				new DomainRolePlayerInfo(typeof(StateHasPostConditions), "Condition", StateHasPostConditions.ConditionDomainRoleId),
			};
		}
		#endregion
		#region Factory methods
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementMap;
	
		/// <summary>
		/// Creates an element of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementType">Element type which belongs to this domain model.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		public sealed override DslModeling::ModelElement CreateElement(DslModeling::Partition partition, global::System.Type elementType, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementType == null) throw new global::System.ArgumentNullException("elementType");
	
			if (createElementMap == null)
			{
				createElementMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(18);
				createElementMap.Add(typeof(AttackGraph), 0);
				createElementMap.Add(typeof(Task), 1);
				createElementMap.Add(typeof(StartPoint), 2);
				createElementMap.Add(typeof(Endpoint), 3);
				createElementMap.Add(typeof(MergeBranch), 4);
				createElementMap.Add(typeof(Synchronization), 5);
				createElementMap.Add(typeof(State), 6);
				createElementMap.Add(typeof(Condition), 7);
				createElementMap.Add(typeof(AttackDiagram), 8);
				createElementMap.Add(typeof(FlowConnector), 9);
				createElementMap.Add(typeof(SyncBarShape), 10);
				createElementMap.Add(typeof(StateShape), 11);
				createElementMap.Add(typeof(TaskShape), 12);
				createElementMap.Add(typeof(MergeBranchShape), 13);
				createElementMap.Add(typeof(EndShape), 14);
				createElementMap.Add(typeof(StartShape), 15);
			}
			int index;
			if (!createElementMap.TryGetValue(elementType, out index))
			{
				// construct exception error message		
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::JA.Attack.AttackDomainModel.SingletonResourceManager.GetString("UnrecognizedElementType"),
								elementType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementType");
			}
			switch (index)
			{
				case 0: return new AttackGraph(partition, propertyAssignments);
				case 1: return new Task(partition, propertyAssignments);
				case 2: return new StartPoint(partition, propertyAssignments);
				case 3: return new Endpoint(partition, propertyAssignments);
				case 4: return new MergeBranch(partition, propertyAssignments);
				case 5: return new Synchronization(partition, propertyAssignments);
				case 6: return new State(partition, propertyAssignments);
				case 7: return new Condition(partition, propertyAssignments);
				case 8: return new AttackDiagram(partition, propertyAssignments);
				case 9: return new FlowConnector(partition, propertyAssignments);
				case 10: return new SyncBarShape(partition, propertyAssignments);
				case 11: return new StateShape(partition, propertyAssignments);
				case 12: return new TaskShape(partition, propertyAssignments);
				case 13: return new MergeBranchShape(partition, propertyAssignments);
				case 14: return new EndShape(partition, propertyAssignments);
				case 15: return new StartShape(partition, propertyAssignments);
				default: return null;
			}
		}
	
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementLinkMap;
	
		/// <summary>
		/// Creates an element link of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementLinkType">Element link type which belongs to this domain model.</param>
		/// <param name="roleAssignments">List of relationship role assignments for the new link.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element link.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		public sealed override DslModeling::ElementLink CreateElementLink(DslModeling::Partition partition, global::System.Type elementLinkType, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementLinkType == null) throw new global::System.ArgumentNullException("elementLinkType");
			if (roleAssignments == null) throw new global::System.ArgumentNullException("roleAssignments");
	
			if (createElementLinkMap == null)
			{
				createElementLinkMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(4);
				createElementLinkMap.Add(typeof(Flow), 0);
				createElementLinkMap.Add(typeof(AttackGraphHasFlowElements), 1);
				createElementLinkMap.Add(typeof(TaskHasPreConditions), 2);
				createElementLinkMap.Add(typeof(StateHasPostConditions), 3);
			}
			int index;
			if (!createElementLinkMap.TryGetValue(elementLinkType, out index))
			{
				// construct exception error message
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::JA.Attack.AttackDomainModel.SingletonResourceManager.GetString("UnrecognizedElementLinkType"),
								elementLinkType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementLinkType");
			
			}
			switch (index)
			{
				case 0: return new Flow(partition, roleAssignments, propertyAssignments);
				case 1: return new AttackGraphHasFlowElements(partition, roleAssignments, propertyAssignments);
				case 2: return new TaskHasPreConditions(partition, roleAssignments, propertyAssignments);
				case 3: return new StateHasPostConditions(partition, roleAssignments, propertyAssignments);
				default: return null;
			}
		}
		#endregion
		#region Resource manager
		
		private static global::System.Resources.ResourceManager resourceManager;
		
		/// <summary>
		/// The base name of this model's resources.
		/// </summary>
		public const string ResourceBaseName = "JA.Attack.GeneratedCode.DomainModelResx";
		
		/// <summary>
		/// Gets the DomainModel's ResourceManager. If the ResourceManager does not already exist, then it is created.
		/// </summary>
		public override global::System.Resources.ResourceManager ResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return AttackDomainModel.SingletonResourceManager;
			}
		}
	
		/// <summary>
		/// Gets the Singleton ResourceManager for this domain model.
		/// </summary>
		public static global::System.Resources.ResourceManager SingletonResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				if (AttackDomainModel.resourceManager == null)
				{
					AttackDomainModel.resourceManager = new global::System.Resources.ResourceManager(ResourceBaseName, typeof(AttackDomainModel).Assembly);
				}
				return AttackDomainModel.resourceManager;
			}
		}
		#endregion
		#region Copy/Remove closures
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter copyClosure;
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter removeClosure;
		/// <summary>
		/// Returns an IElementVisitorFilter that corresponds to the ClosureType.
		/// </summary>
		/// <param name="type">closure type</param>
		/// <param name="rootElements">collection of root elements</param>
		/// <returns>IElementVisitorFilter or null</returns>
		public override DslModeling::IElementVisitorFilter GetClosureFilter(DslModeling::ClosureType type, global::System.Collections.Generic.ICollection<DslModeling::ModelElement> rootElements)
		{
			switch (type)
			{
				case DslModeling::ClosureType.CopyClosure:
					return AttackDomainModel.CopyClosure;
				case DslModeling::ClosureType.DeleteClosure:
					return AttackDomainModel.DeleteClosure;
			}
			return base.GetClosureFilter(type, rootElements);
		}
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter CopyClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (AttackDomainModel.copyClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter copyFilter = new DslModeling::ChainingElementVisitorFilter();
					copyFilter.AddFilter(new AttackCopyClosure());
					copyFilter.AddFilter(new DslModeling::CoreCopyClosure());
					copyFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceCopyClosure());
					
					AttackDomainModel.copyClosure = copyFilter;
				}
				return AttackDomainModel.copyClosure;
			}
		}
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter DeleteClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (AttackDomainModel.removeClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter removeFilter = new DslModeling::ChainingElementVisitorFilter();
					removeFilter.AddFilter(new AttackDeleteClosure());
					removeFilter.AddFilter(new DslModeling::CoreDeleteClosure());
					removeFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceDeleteClosure());
		
					AttackDomainModel.removeClosure = removeFilter;
				}
				return AttackDomainModel.removeClosure;
			}
		}
		#endregion
		#region Diagram rule helpers
		/// <summary>
		/// Enables rules in this domain model related to diagram fixup for the given store.
		/// If diagram data will be loaded into the store, this method should be called first to ensure
		/// that the diagram behaves properly.
		/// </summary>
		public static void EnableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.EnableRule(typeof(global::JA.Attack.FixUpDiagram));
			ruleManager.EnableRule(typeof(global::JA.Attack.ConnectorRolePlayerChanged));
			ruleManager.EnableRule(typeof(global::JA.Attack.CompartmentItemAddRule));
			ruleManager.EnableRule(typeof(global::JA.Attack.CompartmentItemDeleteRule));
			ruleManager.EnableRule(typeof(global::JA.Attack.CompartmentItemRolePlayerChangeRule));
			ruleManager.EnableRule(typeof(global::JA.Attack.CompartmentItemRolePlayerPositionChangeRule));
			ruleManager.EnableRule(typeof(global::JA.Attack.CompartmentItemChangeRule));
		}
		
		/// <summary>
		/// Disables rules in this domain model related to diagram fixup for the given store.
		/// </summary>
		public static void DisableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.DisableRule(typeof(global::JA.Attack.FixUpDiagram));
			ruleManager.DisableRule(typeof(global::JA.Attack.ConnectorRolePlayerChanged));
			ruleManager.DisableRule(typeof(global::JA.Attack.CompartmentItemAddRule));
			ruleManager.DisableRule(typeof(global::JA.Attack.CompartmentItemDeleteRule));
			ruleManager.DisableRule(typeof(global::JA.Attack.CompartmentItemRolePlayerChangeRule));
			ruleManager.DisableRule(typeof(global::JA.Attack.CompartmentItemRolePlayerPositionChangeRule));
			ruleManager.DisableRule(typeof(global::JA.Attack.CompartmentItemChangeRule));
		}
		#endregion
	}
		
	#region Copy/Remove closure classes
	/// <summary>
	/// Remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class AttackDeleteClosure : AttackDeleteClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public AttackDeleteClosure() : base()
		{
		}
	}
	
	/// <summary>
	/// Base class for remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class AttackDeleteClosureBase : DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary domainRoles;
		/// <summary>
		/// Constructor
		/// </summary>
		public AttackDeleteClosureBase()
		{
			#region Initialize DomainData Table
			DomainRoles.Add(global::JA.Attack.AttackGraphHasFlowElements.FlowElementDomainRoleId, true);
			DomainRoles.Add(global::JA.Attack.TaskHasPreConditions.ConditionDomainRoleId, true);
			DomainRoles.Add(global::JA.Attack.StateHasPostConditions.ConditionDomainRoleId, true);
			#endregion
		}
		/// <summary>
		/// Called to ask the filter if a particular relationship from a source element should be included in the traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="sourceRoleInfo">DomainRoleInfo of the role that the source element is playing in the relationship</param>
		/// <param name="domainRelationshipInfo">DomainRelationshipInfo for the ElementLink in question</param>
		/// <param name="targetRelationship">Relationship in question</param>
		/// <returns>Yes if the relationship should be traversed</returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRelationship(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::DomainRoleInfo sourceRoleInfo, DslModeling::DomainRelationshipInfo domainRelationshipInfo, DslModeling::ElementLink targetRelationship)
		{
			return DslModeling::VisitorFilterResult.Yes;
		}
		/// <summary>
		/// Called to ask the filter if a particular role player should be Visited during traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="elementLink">Element Link that forms the relationship to the role player in question</param>
		/// <param name="targetDomainRole">DomainRoleInfo of the target role</param>
		/// <param name="targetRolePlayer">Model Element that plays the target role in the relationship</param>
		/// <returns></returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRolePlayer(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::ElementLink elementLink, DslModeling::DomainRoleInfo targetDomainRole, DslModeling::ModelElement targetRolePlayer)
		{
			if (targetDomainRole == null) throw new global::System.ArgumentNullException("targetDomainRole");
			return this.DomainRoles.Contains(targetDomainRole.Id) ? DslModeling::VisitorFilterResult.Yes : DslModeling::VisitorFilterResult.DoNotCare;
		}
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary DomainRoles
		{
			get
			{
				if (this.domainRoles == null)
				{
					this.domainRoles = new global::System.Collections.Specialized.HybridDictionary();
				}
				return this.domainRoles;
			}
		}
	
	}
	/// <summary>
	/// Copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class AttackCopyClosure : AttackCopyClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public AttackCopyClosure() : base()
		{
		}
	}
	/// <summary>
	/// Base class for copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class AttackCopyClosureBase : DslModeling::CopyClosureFilter, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public AttackCopyClosureBase():base()
		{
		}
	}
	#endregion
		
}
namespace JA.Attack
{
	/// <summary>
	/// DomainEnumeration: TaskSort
	/// Description for JA.Attack.TaskSort
	/// </summary>
	[global::System.CLSCompliant(true)]
	public enum TaskSort
	{
		/// <summary>
		/// Regular
		/// Description for JA.Attack.TaskSort.Regular
		/// </summary>
		[DslDesign::DescriptionResource("JA.Attack.TaskSort/Regular.Description", typeof(global::JA.Attack.AttackDomainModel), "JA.Attack.GeneratedCode.DomainModelResx")]
		Regular = 0,
		/// <summary>
		/// SuperTask
		/// Description for JA.Attack.TaskSort.SuperTask
		/// </summary>
		[DslDesign::DescriptionResource("JA.Attack.TaskSort/SuperTask.Description", typeof(global::JA.Attack.AttackDomainModel), "JA.Attack.GeneratedCode.DomainModelResx")]
		SuperTask = 1,
	}
}

