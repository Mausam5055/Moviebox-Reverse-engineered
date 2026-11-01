.class public final Lrl/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lrl/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrl/l;

    invoke-direct {v0}, Lrl/l;-><init>()V

    sput-object v0, Lrl/l;->a:Lrl/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/transsion/home/bean/LayoutStyle;Ljava/lang/String;)Lrl/k;
    .locals 2

    add-int/lit8 p2, p1, -0x1

    int-to-float p2, p2

    const/high16 p3, 0x41000000    # 8.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x41c00000    # 24.0f

    add-float/2addr p2, p3

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p3

    const/high16 v0, 0x43240000    # 164.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v1, 0x42b80000    # 92.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    sub-int/2addr p3, p2

    div-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p2, v1

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    new-instance p2, Lrl/k;

    invoke-direct {p2, p3, p1}, Lrl/k;-><init>(II)V

    return-object p2
.end method
