.class public final Lcom/transsion/member/z0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/z0;

    invoke-direct {v0}, Lcom/transsion/member/z0;-><init>()V

    sput-object v0, Lcom/transsion/member/z0;->a:Lcom/transsion/member/z0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/LinearLayoutManager;ILjava/lang/String;)Z
    .locals 1

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-gtz p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    if-gez p1, :cond_2

    return v0

    :cond_2
    div-int/lit8 p2, p2, 0x2

    if-lt p1, p2, :cond_3

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string p2, "type"

    const-string v0, "list"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "moduleName"

    const-string v0, "svip_features"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    const-string v0, "feature_browser"

    invoke-virtual {p2, p3, v0, p1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method
