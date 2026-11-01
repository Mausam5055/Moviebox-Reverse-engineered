.class public final Lcom/apm/insight/runtime/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/apm/insight/runtime/g;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/apm/insight/nativecrash/b;
    .locals 2

    new-instance v0, Lcom/apm/insight/nativecrash/b;

    new-instance v1, Lcom/apm/insight/runtime/g$1;

    invoke-direct {v1}, Lcom/apm/insight/runtime/g$1;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/apm/insight/nativecrash/b;-><init>(Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/apm/insight/e;->a()Lcom/apm/insight/nativecrash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apm/insight/runtime/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/runtime/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
