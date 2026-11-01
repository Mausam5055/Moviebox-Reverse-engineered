.class public final Lcom/transsion/baselib/report/j;
.super Ljava/lang/Object;

# interfaces
.implements Lhj/j;


# instance fields
.field private a:Ljava/util/HashSet;

.field private final b:Ljava/lang/String;

.field private c:Lcom/transsnet/loginapi/ILoginApi;

.field private d:Lcom/transsion/memberapi/IMemberApi;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/baselib/report/j;->a:Ljava/util/HashSet;

    const-string v0, "ext"

    iput-object v0, p0, Lcom/transsion/baselib/report/j;->b:Ljava/lang/String;

    new-instance v0, Lcom/transsion/baselib/report/i;

    invoke-direct {v0}, Lcom/transsion/baselib/report/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/baselib/report/j;->e:Lkotlin/Lazy;

    iget-object v0, p0, Lcom/transsion/baselib/report/j;->a:Ljava/util/HashSet;

    const-string v1, "app_start"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/baselib/report/j;->a:Ljava/util/HashSet;

    const-string v1, "app_stop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/baselib/report/j;->a:Ljava/util/HashSet;

    const-string v1, "download_click"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic c()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    invoke-static {}, Lcom/transsion/baselib/report/j;->e()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v0

    return-object v0
.end method

.method private final native d()Lcom/transsion/memberapi/IPremiumApi;
.end method

.method private static final native e()Lcom/transsion/memberapi/IPremiumApi;
.end method


# virtual methods
.method public native a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public native b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public native getAccount()Lkotlin/Pair;
.end method
