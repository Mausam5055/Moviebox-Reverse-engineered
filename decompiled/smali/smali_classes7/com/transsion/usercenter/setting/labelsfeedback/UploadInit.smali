.class public final Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

.field private static b:Z

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;-><init>()V

    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->a:Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/q;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/q;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/r;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/r;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lyw/a;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->i()Lyw/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->h()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;)Lcom/transsnet/loginapi/ILoginApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->e()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;)Lyw/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->f()Lyw/a;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final f()Lyw/a;
    .locals 1

    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyw/a;

    return-object v0
.end method

.method private static final h()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final i()Lyw/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lyw/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyw/a;

    return-object v0
.end method


# virtual methods
.method public final g()V
    .locals 2

    sget-boolean v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->b:Z

    sget-object v0, Lcw/c;->a:Lcw/c;

    new-instance v1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1;

    invoke-direct {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit$init$1;-><init>()V

    invoke-virtual {v0, v1}, Lcw/c;->e(Lcw/b;)V

    return-void
.end method
