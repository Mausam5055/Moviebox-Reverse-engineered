.class public final Lcom/cloud/h5update/b;
.super Ljava/lang/Object;

# interfaces
.implements Lt6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/b$b;,
        Lcom/cloud/h5update/b$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/cloud/h5update/b$b;

.field private static h:Lcom/cloud/h5update/bean/UpdateEntity;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Lt6/a;

.field private f:Lt6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/h5update/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/h5update/b;-><init>()V

    return-void
.end method

.method public static final synthetic b()Lcom/cloud/h5update/bean/UpdateEntity;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    return-object v0
.end method

.method public static final synthetic c(Lcom/cloud/h5update/b;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic d(Lcom/cloud/h5update/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/b;->c:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic e(Lcom/cloud/h5update/b;Lt6/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/b;->e:Lt6/a;

    return-void
.end method

.method public static final synthetic f(Lcom/cloud/h5update/b;Lt6/d;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/b;->f:Lt6/d;

    return-void
.end method

.method public static final synthetic g(Lcom/cloud/h5update/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/b;->d:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic h(Lcom/cloud/h5update/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    return-void
.end method

.method private final j()V
    .locals 2

    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {v0}, Lcom/cloud/h5update/utils/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/h5update/b;->i()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/h5update/b;->e:Lt6/a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p0}, Lt6/a;->noNetWork(Ljava/lang/String;Lt6/c;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/cloud/h5update/bean/UpdateEntity;
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/h5update/b;->f:Lt6/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lt6/d;->a(Ljava/lang/String;)Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object p1

    sput-object p1, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    sget-object p1, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/h5update/TH5Update$a;->j()Lt6/b;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v0, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    invoke-interface {p1, v0}, Lt6/b;->onGetEntity(Lcom/cloud/h5update/bean/UpdateEntity;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    sget-object p1, Lcom/cloud/h5update/b;->h:Lcom/cloud/h5update/bean/UpdateEntity;

    return-object p1
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/h5update/b;->e:Lt6/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/h5update/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/cloud/h5update/b;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/h5update/b;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, p0}, Lt6/a;->checkVersion(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "[UpdateManager] : mUpdateUrl \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/h5update/b;->j()V

    return-void
.end method
