.class public abstract Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;
.super Ljava/lang/Object;


# static fields
.field private static h:Z = true

.field private static i:Z = true


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/mbridge/msdk/foundation/controller/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->d:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->h()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->g:Lcom/mbridge/msdk/foundation/controller/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/foundation/controller/e;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/foundation/controller/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->g:Lcom/mbridge/msdk/foundation/controller/e;

    new-instance p1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$b;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$b;-><init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;)V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->a(Lcom/mbridge/msdk/foundation/controller/e$a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKAuthorityController"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->k()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->h:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->i:Z

    return-void
.end method

.method private d(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->c:I

    return-void
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->h:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->i:Z

    return v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->g:Lcom/mbridge/msdk/foundation/controller/e;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/e;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->g:Lcom/mbridge/msdk/foundation/controller/e;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->d(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authDeviceIdStatus(I)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/mbridge/msdk/setting/g;Ljava/lang/String;)I
.end method

.method protected a(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->getStatusByKey(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKAuthorityController"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(I)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->c:I

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->d(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b$a;-><init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "authority_other"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "authority_general_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "authority_device_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "authority_all_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "authority_serial_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authOtherDataStatus(I)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authGenDataStatus(I)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authDeviceIdStatus(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(I)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authSerialIdStatus(I)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4b3bb6b6 -> :sswitch_4
        -0x4393d9f8 -> :sswitch_3
        -0x278c4a58 -> :sswitch_2
        0x3d34781d -> :sswitch_1
        0x5d432b14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->d:I

    return-void
.end method

.method public b()Z
    .locals 3

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->e:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->c:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/h;->c()Lcom/mbridge/msdk/setting/g;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "keyname"

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "client_status"

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "server_status"

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Lcom/mbridge/msdk/setting/g;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authGenDataStatus(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authDeviceIdStatus(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authSerialIdStatus(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->authOtherDataStatus(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    const-string v1, "authority_serial_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a:Ljava/util/ArrayList;

    const-string v1, "authority_other"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKAuthorityController"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
