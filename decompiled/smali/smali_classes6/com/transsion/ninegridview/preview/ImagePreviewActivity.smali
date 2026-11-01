.class public final Lcom/transsion/ninegridview/preview/ImagePreviewActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lon/b;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 _2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001`B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\'\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\'\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\'\u0010 \u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008 \u0010\u001cJ\u000f\u0010!\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0006JI\u0010*\u001a\u00020\u000728\u0010)\u001a4\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008(&\u0012\u0015\u0012\u0013\u0018\u00010\'\u00a2\u0006\u000c\u0008$\u0012\u0008\u0008%\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u00020\u00070\"H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0011\u0010-\u001a\u0004\u0018\u00010,H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0006J\u000f\u00100\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0019\u00104\u001a\u00020\u00072\u0008\u00103\u001a\u0004\u0018\u000102H\u0015\u00a2\u0006\u0004\u00084\u00105J\u0011\u00107\u001a\u0004\u0018\u000106H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020#H\u0016\u00a2\u0006\u0004\u00089\u0010:J-\u0010@\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u00182\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020,0<2\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008B\u0010:J\u000f\u0010C\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0006J\u000f\u0010D\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008D\u0010:J\r\u0010E\u001a\u00020\u0007\u00a2\u0006\u0004\u0008E\u0010\u0006J\u0017\u0010H\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010J\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008J\u0010IJ\u000f\u0010K\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008K\u0010\u0006R\u0016\u0010M\u001a\u00020L8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0016\u0010P\u001a\u00020O8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u001c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020S0R8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010V\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0016\u0010X\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010WR\u0016\u0010Y\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010WR\u0016\u0010Z\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010WR\u0016\u0010[\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010WR\u0014\u0010\\\u001a\u00020,8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010^\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010]\u00a8\u0006a"
    }
    d2 = {
        "Lcom/transsion/ninegridview/preview/ImagePreviewActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lon/b;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "imageShareClick",
        "Landroid/net/Uri;",
        "imageUri",
        "shareImage",
        "(Landroid/net/Uri;)V",
        "showSettingDialog",
        "Landroid/widget/ImageView;",
        "imageView",
        "computeImageWidthAndHeight",
        "(Landroid/widget/ImageView;)V",
        "Landroid/animation/ValueAnimator;",
        "valueAnimator",
        "addIntoListener",
        "(Landroid/animation/ValueAnimator;)V",
        "",
        "fraction",
        "",
        "startValue",
        "endValue",
        "evaluateInt",
        "(FII)I",
        "",
        "evaluateFloat",
        "(FLjava/lang/Number;Ljava/lang/Number;)F",
        "evaluateArgb",
        "downloadImage",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "exit",
        "Ljava/io/File;",
        "imgFile",
        "callback",
        "saveToAlbum",
        "(Lkotlin/jvm/functions/Function2;)V",
        "",
        "getCurImgUrl",
        "()Ljava/lang/String;",
        "startEnterTheAnimation",
        "getViewBinding",
        "()Lon/b;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "isTranslucent",
        "()Z",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "isAttach",
        "onBackPressed",
        "onPreDraw",
        "finishActivityAnim",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "onConnected",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "rootView",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/ninegridview/preview/q;",
        "imagePreviewAdapter",
        "Lcom/transsion/ninegridview/preview/q;",
        "",
        "Lcom/transsion/ninegridview/ImageInfo;",
        "imageInfoList",
        "Ljava/util/List;",
        "currentItem",
        "I",
        "imageHeight",
        "imageWidth",
        "screenWidth",
        "screenHeight",
        "PAGE_NAME",
        "Ljava/lang/String;",
        "pageFrom",
        "Companion",
        "a",
        "NineGridView_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ANIMATE_DURATION:I = 0xc8

.field public static final CURRENT_ITEM:Ljava/lang/String; = "CURRENT_ITEM"

.field public static final Companion:Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

.field public static final IMAGE_INFO:Ljava/lang/String; = "IMAGE_INFO"


# instance fields
.field private final PAGE_NAME:Ljava/lang/String;

.field private currentItem:I

.field private imageHeight:I

.field private imageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/ninegridview/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private imagePreviewAdapter:Lcom/transsion/ninegridview/preview/q;

.field private imageWidth:I

.field private pageFrom:Ljava/lang/String;

.field private rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const-string v0, "image_preview"

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->PAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrentItem$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    return p0
.end method

.method public static final synthetic access$getImageInfoList$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getRootView$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public static final synthetic access$setCurrentItem$p(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    return-void
.end method

.method private final addIntoListener(Landroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$b;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private final computeImageWidthAndHeight(Landroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :cond_0
    iget v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->screenHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v3, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->screenWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float p1, p1

    div-float/2addr v3, p1

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    move v0, v3

    :cond_1
    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageHeight:I

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageWidth:I

    return-void
.end method

.method private final downloadImage()V
    .locals 1

    new-instance v0, Lcom/transsion/ninegridview/preview/k;

    invoke-direct {v0}, Lcom/transsion/ninegridview/preview/k;-><init>()V

    invoke-direct {p0, v0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->saveToAlbum(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final downloadImage$lambda$7(ZLjava/io/File;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsion/ninegridview/R$string;->has_been_saved:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsion/ninegridview/R$string;->image_save_success:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate$lambda$4$lambda$3(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final evaluateArgb(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private final evaluateFloat(FLjava/lang/Number;Ljava/lang/Number;)F
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    return p2
.end method

.method private final evaluateInt(FII)I
    .locals 1

    int-to-float v0, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public static synthetic f0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate$lambda$2$lambda$1(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate$lambda$0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getCurImgUrl()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    const-string v2, "imageInfoList"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    iget v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ninegridview/ImageInfo;

    iget-object v3, v0, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    :cond_2
    return-object v3
.end method

.method public static synthetic h0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate$lambda$2(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onPreDraw$lambda$6(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final imageShareClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lon/b;

    iget-object v0, v0, Lon/b;->c:Lcom/noober/background/view/BLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/transsion/ninegridview/preview/f;

    invoke-direct {v2, p0, v0, v1}, Lcom/transsion/ninegridview/preview/f;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;J)V

    invoke-direct {p0, v2}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->saveToAlbum(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final imageShareClick$lambda$5(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;JZLjava/io/File;)Lkotlin/Unit;
    .locals 1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".download.fileprovider"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->shareImage(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p4, Lcom/transsion/web/R$string;->share_failed_tips:I

    invoke-virtual {p3, p4}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lon/b;

    iget-object p0, p0, Lon/b;->c:Lcom/noober/background/view/BLView;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "share: \u8017\u65f6="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic j0(ZLjava/io/File;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->downloadImage$lambda$7(ZLjava/io/File;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->onCreate$lambda$4(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;JZLjava/io/File;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageShareClick$lambda$5(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;JZLjava/io/File;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->finishActivityAnim()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/transsion/ninegridview/preview/l;

    invoke-direct {p1, p0}, Lcom/transsion/ninegridview/preview/l;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p0, v0}, Lcom/transsion/baseui/util/d;->b(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final onCreate$lambda$2$lambda$1(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Lkotlin/Unit;
    .locals 4

    const-string v0, "module_name"

    const-string v1, "save_picture"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->pageFrom:Ljava/lang/String;

    const-string v2, "page_from"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->PAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->downloadImage()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$4(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/ninegridview/preview/g;

    invoke-direct {p1, p0}, Lcom/transsion/ninegridview/preview/g;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p0, v0}, Lcom/transsion/baseui/util/d;->b(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final onCreate$lambda$4$lambda$3(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)Lkotlin/Unit;
    .locals 9

    sget-object v0, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->PAGE_NAME:Ljava/lang/String;

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const-string v2, "share"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageShareClick()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onPreDraw$lambda$6(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FFLandroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "animation"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p6, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez p6, :cond_0

    long-to-float p6, v2

    long-to-float v0, v0

    div-float/2addr p6, v0

    goto :goto_0

    :cond_0
    move p6, v4

    :goto_0
    cmpl-float v0, p6, v4

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, p6

    :goto_1
    :try_start_0
    iget p6, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewX:I

    iget v0, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p6, v0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p6, v0

    const/4 v0, 0x0

    invoke-direct {p1, v4, p6, v0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->evaluateInt(FII)I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p0, p6}, Landroid/view/View;->setTranslationX(F)V

    iget p6, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewY:I

    iget p2, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    float-to-int p2, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p6, p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p6, p2

    invoke-direct {p1, v4, p6, v0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->evaluateInt(FII)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p1, v4, p2, p4}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->evaluateFloat(FLjava/lang/Number;Ljava/lang/Number;)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, v4, p2, p3}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->evaluateFloat(FLjava/lang/Number;Ljava/lang/Number;)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p0, :cond_2

    const-string p0, "rootView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    const/high16 p2, -0x1000000

    invoke-direct {p1, v4, v0, p2}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->evaluateArgb(FII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAnimationUpdate: e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    return-void
.end method

.method private final saveToAlbum(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    sget-object v1, Loh/c;->a:Loh/c$a;

    iget-object v2, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/q;

    if-nez v2, :cond_0

    const-string v2, "imagePreviewAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/transsion/ninegridview/preview/q;->e()Lcom/transsion/photoview/PhotoView;

    move-result-object v2

    const-string v3, "gePhotoView(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Loh/c$a;->a(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->getCurImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/ninegridview/helper/FileHelper;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/transsion/ninegridview/helper/FileHelper;->r(Landroidx/appcompat/app/AppCompatActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final shareImage(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    const-string v0, "ImageShareDialog"

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/web/share/ImageShareDialog;->f:Lcom/transsion/web/share/ImageShareDialog$a;

    invoke-virtual {v1, p1}, Lcom/transsion/web/share/ImageShareDialog$a;->a(Landroid/net/Uri;)Lcom/transsion/web/share/ImageShareDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget v0, Lcom/transsion/web/R$string;->share_failed_tips:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    :goto_0
    return-void
.end method

.method private final showSettingDialog()V
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/ninegridview/R$string;->system_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->permission_deny_down_tip:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/tn/lib/widget/dialog/TRDialog$a;

    invoke-direct {v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->system_settings:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final startEnterTheAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$e;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_0

    const-string v1, "rootView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final finishActivityAnim()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$c;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_0

    const-string v1, "rootView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->getViewBinding()Lon/b;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lon/b;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lon/b;->c(Landroid/view/LayoutInflater;)Lon/b;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAttach()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "image_preview"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->finishActivityAnim()V

    return-void
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->pageFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/b;

    iget-object p1, p1, Lon/b;->j:Lcom/transsion/ninegridview/preview/HackyViewPager;

    const-string v2, "viewPager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lon/b;

    iget-object v2, v2, Lon/b;->h:Landroid/widget/TextView;

    const-string v4, "tvPager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v4

    check-cast v4, Lon/b;

    iget-object v4, v4, Lon/b;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v4, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->screenWidth:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->screenHeight:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "IMAGE_INFO"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    instance-of v6, v5, Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    check-cast v5, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object v5, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    const-string v5, "CURRENT_ITEM"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    new-instance v4, Lcom/transsion/ninegridview/preview/q;

    iget-object v5, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    const-string v6, "imageInfoList"

    if-nez v5, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v7

    :cond_3
    invoke-direct {v4, p0, v5}, Lcom/transsion/ninegridview/preview/q;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/q;

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget v4, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->startEnterTheAnimation()V

    new-instance v4, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;

    invoke-direct {v4, p0, v2}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$d;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Landroid/widget/TextView;)V

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$h;)V

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    if-nez p1, :cond_4

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v7

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_5

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget p1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    if-nez v4, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v7, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v4, v5, v3

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d/%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/b;

    iget-object p1, p1, Lon/b;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/ninegridview/preview/h;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/h;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/b;

    iget-object p1, p1, Lon/b;->b:Lcom/noober/background/view/BLView;

    new-instance v0, Lcom/transsion/ninegridview/preview/i;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/i;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/b;

    iget-object p1, p1, Lon/b;->c:Lcom/noober/background/view/BLView;

    new-instance v0, Lcom/transsion/ninegridview/preview/j;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/j;-><init>(Lcom/transsion/ninegridview/preview/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lon/b;

    iget-object p1, p1, Lon/b;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lon/b;

    iget-object v0, v0, Lon/b;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/q;

    const-string v1, "imagePreviewAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/ninegridview/preview/q;->g()Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/q;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ninegridview/preview/q;->f()Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->computeImageWidthAndHeight(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "imageInfoList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    iget v0, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->currentItem:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/ninegridview/ImageInfo;

    iget v0, v6, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageWidth:I

    int-to-float v2, v2

    div-float v8, v0, v2

    iget v0, v6, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->imageHeight:I

    int-to-float v1, v1

    div-float v9, v0, v1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/ninegridview/preview/m;

    move-object v3, v1

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/transsion/ninegridview/preview/m;-><init>(Landroid/view/View;Lcom/transsion/ninegridview/preview/ImagePreviewActivity;Lcom/transsion/ninegridview/ImageInfo;Landroid/widget/ImageView;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->addIntoListener(Landroid/animation/ValueAnimator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    return v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sget-object p2, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    invoke-virtual {p2}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    move-result p2

    if-ne p1, p2, :cond_1

    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->downloadImage()V

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->showSettingDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x65

    sget-object v0, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    return-void
.end method
