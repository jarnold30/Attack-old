<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="31df06e6-d6f3-4a3d-b307-22198ee33c3d" Description="Description for JA.Attack.Attack" Name="Attack" DisplayName="Task Flow" Namespace="JA.Attack" ProductName="Attack" CompanyName="JA" PackageGuid="f5289f65-761a-4fc5-81b6-efd87c9d9530" PackageNamespace="JA.Attack" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="d2a3c7f9-11e0-4074-934b-1750d255a785" Description="Overall base class that provides every element with a Name property which acts as its MonikerKey for serialization." Name="NamedElement" DisplayName="Named Element" InheritanceModifier="Abstract" Namespace="JA.Attack">
      <Properties>
        <DomainProperty Id="6ca4f441-854b-4612-9ce5-255cdfc7c534" Description="Description for JA.Attack.NamedElement.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Notes>
            The XmlPropertyData sets this property as the MonikerKey. It is therefore important that all the Name values are unique before the model is saved to file.
            The IsElementName attribute ensures that this property will be initialized uniquely.
            However, it does not prevent the user from setting different elements to have the same name, which would prevent saving.
            An alternative technique would be to use a property with type /System/Guid as the MonikerKey, which would be less susceptible to interference from the user;
            the downside is that monikers in the saved file would be less readable.
          </Notes>
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="084d84e6-7942-4663-8623-047163eac297" Description="Root element in which others are embedded." Name="AttackGraph" DisplayName="Attack Graph" Namespace="JA.Attack">
      <Notes>The ElementMergeDirectives specify what classes of element can be dropped onto this one in the editor, and what relationships that action will construct.
        Merges can also be invoked through the API, providing an alternative way to create embedding relationships.
      </Notes>
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="FlowElement" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AttackGraphHasFlowElements.FlowElements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="5deecec7-f9a6-4b9b-b377-4057063d59ba" Description="Elements that can be connected by Flow links." Name="FlowElement" DisplayName="Flow Element" InheritanceModifier="Abstract" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
      <Properties>
        <DomainProperty Id="4a25d64c-b80f-4370-b3d0-5c9a6fdded8b" Description="" Name="Description" DisplayName="Description" DefaultValue="">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="ba7ee224-f394-449e-a09d-50ae73b10275" Description="" Name="Task" DisplayName="Task" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Condition" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>TaskHasPreConditions.Conditioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="15720aac-36f3-4e7c-b53d-992ebef16911" Description="" Name="StartPoint" DisplayName="Start Point" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="4afee0f0-9dc9-4b1b-b367-74b1f27aa2ef" Description="" Name="Endpoint" DisplayName="Endpoint" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="7dcdbb79-60f0-4656-8aba-22bae9069f62" Description="" Name="MergeBranch" DisplayName="Merge Branch" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="699e59e9-822a-42e5-ad18-4423f53e6ffa" Description="" Name="Synchronization" DisplayName="Synchronization" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="b667edc9-9d7e-4387-9089-4232b9832729" Description="" Name="State" DisplayName="State" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="FlowElement" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Condition" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>StateHasPostConditions.Conditioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="cc713251-1235-46e0-8a05-73eb97337ac8" Description="Description for JA.Attack.Condition" Name="Condition" DisplayName="Condition" Namespace="JA.Attack">
      <BaseClass>
        <DomainClassMoniker Name="NamedElement" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="83e5e972-7540-495f-a803-7116624a13f7" Description="Description for JA.Attack.Flow" Name="Flow" DisplayName="Flow" Namespace="JA.Attack">
      <Source>
        <DomainRole Id="4b9e2e55-a750-45c5-9182-2d7c5f8b94e8" Description="Description for JA.Attack.Flow.FlowFrom" Name="FlowFrom" DisplayName="Flow From" PropertyName="FlowTo" PropertyDisplayName="Flow To">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4a941d16-48b7-437a-98c5-9d5d8147220a" Description="Description for JA.Attack.Flow.FlowTo" Name="FlowTo" DisplayName="Flow To" PropertyName="FlowFrom" PropertyDisplayName="Flow From">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8610d0f4-24c4-4870-b040-9192c4bcd239" Description="Description for JA.Attack.AttackGraphHasFlowElements" Name="AttackGraphHasFlowElements" DisplayName="Attack Graph Has Flow Elements" Namespace="JA.Attack" IsEmbedding="true">
      <Source>
        <DomainRole Id="14df650c-bae8-4d16-88b2-e435859ae14e" Description="Description for JA.Attack.AttackGraphHasFlowElements.AttackGraph" Name="AttackGraph" DisplayName="Attack Graph" PropertyName="FlowElements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Flow Elements">
          <RolePlayer>
            <DomainClassMoniker Name="AttackGraph" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b8813faa-05b3-404a-acd4-290d7de6f65a" Description="Description for JA.Attack.AttackGraphHasFlowElements.FlowElement" Name="FlowElement" DisplayName="Flow Element" PropertyName="AttackGraph" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Attack Graph">
          <RolePlayer>
            <DomainClassMoniker Name="FlowElement" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f5d7a24b-0b2a-464e-87aa-107610404551" Description="Description for JA.Attack.TaskHasPreConditions" Name="TaskHasPreConditions" DisplayName="Task Has Pre Conditions" Namespace="JA.Attack" IsEmbedding="true">
      <Source>
        <DomainRole Id="2437a1be-efa5-4e8a-b475-fb3db4d7ab1f" Description="Description for JA.Attack.TaskHasPreConditions.Task" Name="Task" DisplayName="Task" PropertyName="Conditioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Conditioned">
          <RolePlayer>
            <DomainClassMoniker Name="Task" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6286862b-4cbd-456b-a033-a0293ee7b3c6" Description="Description for JA.Attack.TaskHasPreConditions.Condition" Name="Condition" DisplayName="Condition" PropertyName="Task" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Task">
          <RolePlayer>
            <DomainClassMoniker Name="Condition" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="804eb990-51b8-4010-98d9-3f718ea68f6b" Description="Description for JA.Attack.StateHasPostConditions" Name="StateHasPostConditions" DisplayName="State Has Post Conditions" Namespace="JA.Attack" IsEmbedding="true">
      <Source>
        <DomainRole Id="d8cb1665-6ef9-46fb-a517-ac48095883c7" Description="Description for JA.Attack.StateHasPostConditions.State" Name="State" DisplayName="State" PropertyName="Conditioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Conditioned">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="34512374-514d-4540-991d-6bcf0601725a" Description="Description for JA.Attack.StateHasPostConditions.Condition" Name="Condition" DisplayName="Condition" PropertyName="State" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="State">
          <RolePlayer>
            <DomainClassMoniker Name="Condition" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="TaskSort" Namespace="JA.Attack" Description="Description for JA.Attack.TaskSort">
      <Literals>
        <EnumerationLiteral Description="Description for JA.Attack.TaskSort.Regular" Name="Regular" Value="0" />
        <EnumerationLiteral Description="Description for JA.Attack.TaskSort.SuperTask" Name="SuperTask" Value="1" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <ImageShape Id="ec2d4e6a-fb2d-451a-a907-f6f346ddc496" Description="Description for JA.Attack.MergeBranchShape" Name="MergeBranchShape" DisplayName="Merge Branch Shape" Namespace="JA.Attack" FixedTooltipText="Merge Branch Shape" InitialWidth="0.5" InitialHeight="0.3" OutlineThickness="0.01" Image="resources\decision.emf" />
    <ImageShape Id="1260c06f-fae4-4065-8626-cd3254198251" Description="Description for JA.Attack.EndShape" Name="EndShape" DisplayName="End Shape" Namespace="JA.Attack" FixedTooltipText="End Shape" InitialWidth="0.25" InitialHeight="0.25" OutlineThickness="0.01" Image="Resources\Stop.emf" />
    <ImageShape Id="0ec1badf-62ae-4d5c-b02b-37568478ab70" Description="Description for JA.Attack.StartShape" Name="StartShape" DisplayName="Start Shape" Namespace="JA.Attack" FixedTooltipText="Start Shape" InitialWidth="0.25" InitialHeight="0.25" OutlineThickness="0.01" Image="Resources\Start.emf" />
    <GeometryShape Id="40b01fcf-0f74-4909-933a-6ece7fbe131c" Description="Description for JA.Attack.SyncBarShape" Name="SyncBarShape" DisplayName="Sync Bar Shape" Namespace="JA.Attack" FixedTooltipText="Sync Bar Shape" FillColor="208, 207, 197" InitialWidth="1" InitialHeight="0.1" OutlineThickness="0.01" FillGradientMode="Vertical" Geometry="Rectangle" />
    <CompartmentShape Id="f8ba2eb7-41a3-45ec-bb28-8ff1d7b667e7" Description="Description for JA.Attack.StateShape" Name="StateShape" DisplayName="State Shape" Namespace="JA.Attack" FixedTooltipText="State Shape" InitialHeight="1" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <Compartment Name="PostConditions" Title="Post Conditions" />
    </CompartmentShape>
    <CompartmentShape Id="bcd0f51f-439c-4e2e-bfa4-3ce52650b206" Description="Description for JA.Attack.TaskShape" Name="TaskShape" DisplayName="Task Shape" Namespace="JA.Attack" FixedTooltipText="Task Shape" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <Compartment Name="PreConditions" Title="Pre Conditions" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="6e4e9da7-160b-45c4-b224-07d136ec9e73" Description="Description for JA.Attack.FlowConnector" Name="FlowConnector" DisplayName="Flow Connector" Namespace="JA.Attack" FixedTooltipText="Flow Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="AttackSerializationBehavior" Namespace="JA.Attack">
    <ClassData>
      <XmlClassData TypeName="NamedElement" MonikerAttributeName="name" SerializeId="true" MonikerElementName="namedElementMoniker" ElementName="namedElement" MonikerTypeName="NamedElementMoniker">
        <DomainClassMoniker Name="NamedElement" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="NamedElement/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Flow" MonikerAttributeName="" SerializeId="true" MonikerElementName="flowMoniker" ElementName="flow" MonikerTypeName="FlowMoniker">
        <DomainRelationshipMoniker Name="Flow" />
      </XmlClassData>
      <XmlClassData TypeName="AttackGraph" MonikerAttributeName="" SerializeId="true" MonikerElementName="attackGraphMoniker" ElementName="attackGraph" MonikerTypeName="AttackGraphMoniker">
        <DomainClassMoniker Name="AttackGraph" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="flowElements">
            <DomainRelationshipMoniker Name="AttackGraphHasFlowElements" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FlowElement" MonikerAttributeName="" SerializeId="true" MonikerElementName="flowElementMoniker" ElementName="flowElement" MonikerTypeName="FlowElementMoniker">
        <DomainClassMoniker Name="FlowElement" />
        <ElementData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="FlowElement/Description" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="flowTo">
            <DomainRelationshipMoniker Name="Flow" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Task" MonikerAttributeName="" SerializeId="true" MonikerElementName="taskMoniker" ElementName="task" MonikerTypeName="TaskMoniker">
        <DomainClassMoniker Name="Task" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="conditioned">
            <DomainRelationshipMoniker Name="TaskHasPreConditions" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="StartPoint" MonikerAttributeName="" SerializeId="true" MonikerElementName="startPointMoniker" ElementName="startPoint" MonikerTypeName="StartPointMoniker">
        <DomainClassMoniker Name="StartPoint" />
      </XmlClassData>
      <XmlClassData TypeName="Endpoint" MonikerAttributeName="" SerializeId="true" MonikerElementName="endpointMoniker" ElementName="endpoint" MonikerTypeName="EndpointMoniker">
        <DomainClassMoniker Name="Endpoint" />
      </XmlClassData>
      <XmlClassData TypeName="MergeBranch" MonikerAttributeName="" SerializeId="true" MonikerElementName="mergeBranchMoniker" ElementName="mergeBranch" MonikerTypeName="MergeBranchMoniker">
        <DomainClassMoniker Name="MergeBranch" />
      </XmlClassData>
      <XmlClassData TypeName="Synchronization" MonikerAttributeName="" SerializeId="true" MonikerElementName="synchronizationMoniker" ElementName="synchronization" MonikerTypeName="SynchronizationMoniker">
        <DomainClassMoniker Name="Synchronization" />
      </XmlClassData>
      <XmlClassData TypeName="State" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateMoniker" ElementName="state" MonikerTypeName="StateMoniker">
        <DomainClassMoniker Name="State" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="conditioned">
            <DomainRelationshipMoniker Name="StateHasPostConditions" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="MergeBranchShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="mergeBranchShapeMoniker" ElementName="mergeBranchShape" MonikerTypeName="MergeBranchShapeMoniker">
        <ImageShapeMoniker Name="MergeBranchShape" />
      </XmlClassData>
      <XmlClassData TypeName="EndShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="endShapeMoniker" ElementName="endShape" MonikerTypeName="EndShapeMoniker">
        <ImageShapeMoniker Name="EndShape" />
      </XmlClassData>
      <XmlClassData TypeName="StartShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="startShapeMoniker" ElementName="startShape" MonikerTypeName="StartShapeMoniker">
        <ImageShapeMoniker Name="StartShape" />
      </XmlClassData>
      <XmlClassData TypeName="SyncBarShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="syncBarShapeMoniker" ElementName="syncBarShape" MonikerTypeName="SyncBarShapeMoniker">
        <GeometryShapeMoniker Name="SyncBarShape" />
      </XmlClassData>
      <XmlClassData TypeName="FlowConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="flowConnectorMoniker" ElementName="flowConnector" MonikerTypeName="FlowConnectorMoniker">
        <ConnectorMoniker Name="FlowConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AttackDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="attackDiagramMoniker" ElementName="attackDiagram" MonikerTypeName="AttackDiagramMoniker">
        <DiagramMoniker Name="AttackDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="AttackGraphHasFlowElements" MonikerAttributeName="" SerializeId="true" MonikerElementName="attackGraphHasFlowElementsMoniker" ElementName="attackGraphHasFlowElements" MonikerTypeName="AttackGraphHasFlowElementsMoniker">
        <DomainRelationshipMoniker Name="AttackGraphHasFlowElements" />
      </XmlClassData>
      <XmlClassData TypeName="Condition" MonikerAttributeName="" SerializeId="true" MonikerElementName="conditionMoniker" ElementName="condition" MonikerTypeName="ConditionMoniker">
        <DomainClassMoniker Name="Condition" />
      </XmlClassData>
      <XmlClassData TypeName="StateShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateShapeMoniker" ElementName="stateShape" MonikerTypeName="StateShapeMoniker">
        <CompartmentShapeMoniker Name="StateShape" />
      </XmlClassData>
      <XmlClassData TypeName="TaskShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="taskShapeMoniker" ElementName="taskShape" MonikerTypeName="TaskShapeMoniker">
        <CompartmentShapeMoniker Name="TaskShape" />
      </XmlClassData>
      <XmlClassData TypeName="TaskHasPreConditions" MonikerAttributeName="" SerializeId="true" MonikerElementName="taskHasPreConditionsMoniker" ElementName="taskHasPreConditions" MonikerTypeName="TaskHasPreConditionsMoniker">
        <DomainRelationshipMoniker Name="TaskHasPreConditions" />
      </XmlClassData>
      <XmlClassData TypeName="StateHasPostConditions" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateHasPostConditionsMoniker" ElementName="stateHasPostConditions" MonikerTypeName="StateHasPostConditionsMoniker">
        <DomainRelationshipMoniker Name="StateHasPostConditions" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="AttackExplorer">
    <CustomNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Postcondition.bmp">
        <Class>
          <DomainClassMoniker Name="Condition" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\TaskTool.bmp">
        <Class>
          <DomainClassMoniker Name="Task" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\StateTool.bmp">
        <Class>
          <DomainClassMoniker Name="State" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\EndTool.bmp">
        <Class>
          <DomainClassMoniker Name="Endpoint" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\MergeBranchTool.bmp">
        <Class>
          <DomainClassMoniker Name="MergeBranch" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\Start.emf">
        <Class>
          <DomainClassMoniker Name="StartPoint" />
        </Class>
      </ExplorerNodeSettings>
      <ExplorerNodeSettings IconToDisplay="Resources\SyncBarTool.bmp">
        <Class>
          <DomainClassMoniker Name="Synchronization" />
        </Class>
      </ExplorerNodeSettings>
    </CustomNodeSettings>
  </ExplorerBehavior>
  <ConnectionBuilders>
    <ConnectionBuilder Name="FlowBuilder" />
  </ConnectionBuilders>
  <Diagram Id="af694210-0c18-4760-8ae4-6e4d8bf4131a" Description="Description for JA.Attack.AttackDiagram" Name="AttackDiagram" DisplayName="Flow Diagram" Namespace="JA.Attack">
    <Class>
      <DomainClassMoniker Name="AttackGraph" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="MergeBranch" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasFlowElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="MergeBranchShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Endpoint" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasFlowElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="EndShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="StartPoint" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasFlowElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="StartShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Synchronization" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasFlowElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="SyncBarShape" />
      </ShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Task" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasFlowElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TaskShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="TaskShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="TaskShape/PreConditions" />
          <ElementsDisplayed>
            <DomainPath>TaskHasPreConditions.Conditioned/!Condition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="State" />
        <ParentElementPath>
          <DomainPath>AttackGraphHasFlowElements.AttackGraph/!AttackGraph</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="StateShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="StateShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="StateShape/PostConditions" />
          <ElementsDisplayed>
            <DomainPath>StateHasPostConditions.Conditioned/!Condition</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="NamedElement/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="FlowConnector" />
        <DomainRelationshipMoniker Name="Flow" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="Attack" EditorGuid="c023d4e4-474b-4609-8c56-e6d127ea55d9">
    <RootClass>
      <DomainClassMoniker Name="AttackGraph" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="AttackSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Attack">
      <ElementTool Name="Task" ToolboxIcon="Resources\TaskTool.bmp" Caption="Task" Tooltip="Create a Task" HelpKeyword="CreateTaskF1Keyword">
        <DomainClassMoniker Name="Task" />
      </ElementTool>
      <ElementTool Name="StartPoint" ToolboxIcon="Resources\StartTool.bmp" Caption="Start Point" Tooltip="Create a Start Point" HelpKeyword="CreateStartStateF1Keyword">
        <DomainClassMoniker Name="StartPoint" />
      </ElementTool>
      <ElementTool Name="EndPoint" ToolboxIcon="Resources\EndTool.bmp" Caption="End Point" Tooltip="End Point" HelpKeyword="CreateFinalStateF1Keyword">
        <DomainClassMoniker Name="Endpoint" />
      </ElementTool>
      <ElementTool Name="MergeBranch" ToolboxIcon="resources\MergeBranchTool.bmp" Caption="Merge/Branch" Tooltip="Create a Merge/Branch" HelpKeyword="CreateMergeBranchF1Keyword">
        <DomainClassMoniker Name="MergeBranch" />
      </ElementTool>
      <ElementTool Name="Synchronization" ToolboxIcon="resources\SyncBarTool.bmp" Caption="Synchronization" Tooltip="Create a Synchronization bar" HelpKeyword="Synchronization">
        <DomainClassMoniker Name="Synchronization" />
      </ElementTool>
      <ConnectionTool Name="Flow" ToolboxIcon="resources\FlowTool.bmp" Caption="Flow" Tooltip="Drag between Tasks to create a Flow" HelpKeyword="ConnectFlowF1Keyword">
        <ConnectionBuilderMoniker Name="Attack/FlowBuilder" />
      </ConnectionTool>
      <ElementTool Name="State" ToolboxIcon="Resources\TaskTool.bmp" Caption="State" Tooltip="Create a State" HelpKeyword="CreateObjectInStateF1Keyword">
        <DomainClassMoniker Name="State" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="AttackDiagram" />
  </Designer>
  <Explorer ExplorerGuid="64507152-d1a4-43d7-bf21-46eb007fa8cb" Title="Attack Explorer">
    <ExplorerBehaviorMoniker Name="Attack/AttackExplorer" />
  </Explorer>
</Dsl>