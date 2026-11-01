.class public final Landroidx/compose/ui/semantics/SemanticsProperties;
.super Ljava/lang/Object;


# static fields
.field private static final A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final E:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final F:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final H:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final I:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final J:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final K:I

.field public static final a:Landroidx/compose/ui/semantics/SemanticsProperties;

.field private static final b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    const-string v0, "ContentDescription"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$ContentDescription$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentDescription$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "StateDescription"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "ProgressBarRangeInfo"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "PaneTitle"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$PaneTitle$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$PaneTitle$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "SelectableGroup"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "CollectionInfo"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "CollectionItemInfo"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Heading"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Disabled"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "LiveRegion"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Focused"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "IsTraversalGroup"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "InvisibleToUser"

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties$InvisibleToUser$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$InvisibleToUser$1;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ContentType"

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ContentDataType"

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties$ContentDataType$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentDataType$1;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "TraversalIndex"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$TraversalIndex$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$TraversalIndex$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "HorizontalScrollAxisRange"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "VerticalScrollAxisRange"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "IsPopup"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$IsPopup$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsPopup$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "IsDialog"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Role"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties$TestTag$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$TestTag$1;

    const-string v3, "TestTag"

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Text"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "TextSubstitution"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsShowingTextSubstitution"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "EditableText"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "TextSelectionRange"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "ImeAction"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Selected"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "ToggleableState"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->E:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Password"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->F:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v0, "Error"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IndexForKey"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->H:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsEditable"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->I:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "MaxTextLength"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->J:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/semantics/SemanticsProperties;->K:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final D()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final E()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final F()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->E:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final G()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final H()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final m()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->H:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->I:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->J:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->F:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method
