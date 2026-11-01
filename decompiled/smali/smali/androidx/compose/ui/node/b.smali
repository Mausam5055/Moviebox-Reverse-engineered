.class final Landroidx/compose/ui/node/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/focus/k;


# static fields
.field public static final a:Landroidx/compose/ui/node/b;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/b;

    invoke-direct {v0}, Landroidx/compose/ui/node/b;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/b;->a:Landroidx/compose/ui/node/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/b;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroidx/compose/ui/node/b;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic i()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->e(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->i(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->f(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic m()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->h(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->j(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->d(Landroidx/compose/ui/focus/k;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->b(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->a(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method

.method public r(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Landroidx/compose/ui/node/b;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic s()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->c(Landroidx/compose/ui/focus/k;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public t()Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/b;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "canFocus is read before it is written"

    invoke-static {v0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public synthetic u()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/focus/FocusProperties$-CC;->g(Landroidx/compose/ui/focus/k;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    return-object v0
.end method
