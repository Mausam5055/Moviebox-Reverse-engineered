.class public final Lnl/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/a$a;
    }
.end annotation


# static fields
.field public static final c:Lnl/a$a;

.field public static final d:I


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnl/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnl/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnl/a;->c:Lnl/a$a;

    const/16 v0, 0x8

    sput v0, Lnl/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl/a;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lnl/a;->b:Landroid/view/View;

    return-void
.end method

.method private final b(IF)I
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result p2

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const v0, 0xffffff

    and-int/2addr p1, v0

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lnl/a;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {p0, p1, v3}, Lnl/a;->b(IF)I

    move-result p1

    filled-new-array {v1, v2, p1}, [I

    move-result-object p1

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {p1, v1}, Lil/a;->b([ILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
