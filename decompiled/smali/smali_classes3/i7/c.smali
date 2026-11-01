.class public Li7/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:I = -0x1

.field private static e:Ljava/lang/String; = null

.field private static f:I = -0x1

.field private static g:I = -0x1

.field private static h:I = -0x1

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:I

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Li7/c;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Li7/c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Li7/c;->k:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->q:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Li7/c;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    sget-object v0, Li7/c;->i:Ljava/lang/String;

    sget-object v1, Li7/c;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->i:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    sget-object v0, Li7/c;->j:Ljava/lang/String;

    sget-object v1, Li7/c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Li7/c;->l:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static g()I
    .locals 1

    sget v0, Li7/c;->n:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->k()I

    move-result v0

    sput v0, Li7/c;->n:I

    :cond_0
    sget v0, Li7/c;->n:I

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->m()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->m:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static i()I
    .locals 2

    sget v0, Li7/c;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->b()F

    move-result v0

    float-to-int v0, v0

    sput v0, Li7/c;->h:I

    :cond_0
    sget v0, Li7/c;->h:I

    return v0
.end method

.method public static j()I
    .locals 2

    sget v0, Li7/c;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    move-result v0

    sput v0, Li7/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget v0, Li7/c;->g:I

    return v0
.end method

.method public static k()I
    .locals 2

    sget v0, Li7/c;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    move-result v0

    sput v0, Li7/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget v0, Li7/c;->f:I

    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3.6.0.2"

    sput-object v0, Li7/c;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static m()I
    .locals 1

    sget v0, Li7/c;->c:I

    if-nez v0, :cond_0

    const v0, 0x57f08

    sput v0, Li7/c;->c:I

    :cond_0
    sget v0, Li7/c;->c:I

    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static o()I
    .locals 2

    sget v0, Li7/c;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Li7/c;->d:I

    :cond_1
    sget v0, Li7/c;->d:I

    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->p:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    sget-object v0, Li7/c;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li7/c;->o:Ljava/lang/String;

    :cond_0
    sget-object v0, Li7/c;->o:Ljava/lang/String;

    return-object v0
.end method
