.class public final Lcom/transsion/home/view/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/home/view/g;

.field private static b:Z

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/home/view/g;

    invoke-direct {v0}, Lcom/transsion/home/view/g;-><init>()V

    sput-object v0, Lcom/transsion/home/view/g;->a:Lcom/transsion/home/view/g;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/view/g;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "click"

    const-string v2, "search"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "guide"

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/home/view/g;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "search_guide"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/home/view/g;->c()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/home/view/g;->b:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/home/view/g;->b:Z

    return-void
.end method
