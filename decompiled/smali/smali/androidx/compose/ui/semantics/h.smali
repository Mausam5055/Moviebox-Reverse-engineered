.class public final Landroidx/compose/ui/semantics/h;
.super Ljava/lang/Object;


# static fields
.field private static final A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final E:I

.field public static final a:Landroidx/compose/ui/semantics/h;

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
    .locals 5

    new-instance v0, Landroidx/compose/ui/semantics/h;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/h;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    const-string v1, "GetTextLayoutResult"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "OnClick"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "OnLongClick"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ScrollBy"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "ScrollByOffset"

    invoke-direct {v1, v4, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/ui/semantics/h;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ScrollToIndex"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "OnAutofillText"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "SetProgress"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "SetSelection"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "SetText"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "SetTextSubstitution"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ShowTextSubstitution"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "ClearTextSubstitution"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "InsertTextAtCursor"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PerformImeAction"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v2

    sput-object v2, Landroidx/compose/ui/semantics/h;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "CopyText"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "CutText"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PasteText"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Expand"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Collapse"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "Dismiss"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "RequestFocus"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "CustomActions"

    invoke-static {v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PageUp"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PageLeft"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PageDown"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "PageRight"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/semantics/h;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "GetScrollViewportLength"

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/h;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/semantics/h;->E:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final f()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final h()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->D:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final j()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final m()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final o()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final p()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final r()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final s()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final w()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final y()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method

.method public final z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/h;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object v0
.end method
