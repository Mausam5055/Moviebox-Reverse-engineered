.class public final Lcw/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcw/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcw/c;

.field private static final b:Ljava/util/Map;

.field private static c:Lcw/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcw/c;

    invoke-direct {v0}, Lcw/c;-><init>()V

    sput-object v0, Lcw/c;->a:Lcw/c;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcw/c;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcw/c;Ljava/lang/String;)Ldw/a;
    .locals 0

    invoke-direct {p0, p1}, Lcw/c;->d(Ljava/lang/String;)Ldw/a;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/String;)Ldw/a;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lcw/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->TST_TOKEN_STORAGE_OSS:Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    invoke-virtual {v1}, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldw/c;

    invoke-direct {v2}, Ldw/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->TST_TOKEN_STORAGE_S3:Lcom/transsion/upload/bean/UploadTstTokenStorageType;

    invoke-virtual {v1}, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/transsion/upload/bean/UploadTstTokenStorageType;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldw/d;

    invoke-direct {v2}, Ldw/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldw/a;

    return-object p1
.end method


# virtual methods
.method public final b()V
    .locals 2

    sget-object v0, Lcw/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldw/a;

    invoke-virtual {v1}, Ldw/a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Lcw/b;
    .locals 1

    sget-object v0, Lcw/c;->c:Lcw/b;

    return-object v0
.end method

.method public final e(Lcw/b;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcw/c;->c:Lcw/b;

    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V
    .locals 3

    const-string v0, "localFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadFileType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/upload/auth/AuthCheckManager;->a:Lcom/transsion/upload/auth/AuthCheckManager;

    new-instance v1, Lcw/c$a;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p1, p2, p3, v2}, Lcw/c$a;-><init>(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/transsion/upload/auth/AuthCheckManager;->f(Lcom/transsion/upload/auth/a;)V

    return-void
.end method
