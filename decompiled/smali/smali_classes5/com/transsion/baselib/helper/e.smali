.class public final Lcom/transsion/baselib/helper/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baselib/helper/e;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/baselib/helper/e;

    invoke-direct {v0}, Lcom/transsion/baselib/helper/e;-><init>()V

    sput-object v0, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    aput-object v1, v0, v3

    :goto_0
    sput-object v0, Lcom/transsion/baselib/helper/e;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/helper/e;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/transsion/baselib/helper/e;->b:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/baselib/helper/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
