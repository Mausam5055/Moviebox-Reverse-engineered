.class public final Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lon/a;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0006*\u0001g\u0018\u0000 j2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001kB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0005J#\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0011\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008!\u0010 J\u0019\u0010$\u001a\u00020\u00062\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0014\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\r\u0010+\u001a\u00020\u0006\u00a2\u0006\u0004\u0008+\u0010\u0005J/\u00102\u001a\u00020\u00062\u0006\u0010-\u001a\u00020,2\u000e\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0.2\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020(H\u0016\u00a2\u0006\u0004\u00084\u0010*J\u000f\u00105\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00085\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00088\u0010\u0005J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008=\u0010<J%\u0010B\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,\u00a2\u0006\u0004\u0008B\u0010CJ%\u0010E\u001a\u00020>2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020D2\u0006\u0010A\u001a\u00020D\u00a2\u0006\u0004\u0008E\u0010FJ%\u0010G\u001a\u00020,2\u0006\u0010?\u001a\u00020>2\u0006\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020,\u00a2\u0006\u0004\u0008G\u0010CJ\u000f\u0010I\u001a\u00020HH\u0016\u00a2\u0006\u0004\u0008I\u0010JR\u0014\u0010K\u001a\u00020,8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010N\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010V\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010LR\u0016\u0010W\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010LR\u0016\u0010X\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010LR\u0016\u0010Y\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010LR\u0016\u0010Z\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010LR\u0018\u0010\\\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0018\u0010d\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010f\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010eR\u0014\u0010h\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010i\u00a8\u0006l"
    }
    d2 = {
        "Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lon/a;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initView",
        "startEnterTheAnimation",
        "downloadImage",
        "showPageIndex",
        "Ljava/io/File;",
        "file",
        "",
        "url",
        "saveToAlbum",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "getNameFromUrl",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "requestPermission",
        "showSettingDialog",
        "initPlayer",
        "Landroid/view/View;",
        "getItemView",
        "()Landroid/view/View;",
        "Landroid/widget/ImageView;",
        "imageView",
        "computeImageWidthAndHeight",
        "(Landroid/widget/ImageView;)V",
        "Landroid/animation/ValueAnimator;",
        "valueAnimator",
        "addIntoListener",
        "(Landroid/animation/ValueAnimator;)V",
        "addOutListener",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "getViewBinding",
        "()Lon/a;",
        "",
        "isTranslucent",
        "()Z",
        "finishActivityAnim",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "isAttach",
        "onBackPressed",
        "onResume",
        "onPause",
        "onDestroy",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "",
        "fraction",
        "startValue",
        "endValue",
        "evaluateInt",
        "(FII)I",
        "",
        "evaluateFloat",
        "(FLjava/lang/Number;Ljava/lang/Number;)F",
        "evaluateArgb",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "REQUEST_PERMISSION_STORAGE",
        "I",
        "Lcom/transsion/ninegridview/preview/c;",
        "imagePreviewAdapter",
        "Lcom/transsion/ninegridview/preview/c;",
        "",
        "Lcom/transsion/moviedetailapi/bean/Image;",
        "imageList",
        "Ljava/util/List;",
        "isBuiltInApp",
        "Ljava/lang/Boolean;",
        "currentItemIndex",
        "imageHeight",
        "imageWidth",
        "screenWidth",
        "screenHeight",
        "Lcom/transsion/player/orplayer/g;",
        "mPlayer",
        "Lcom/transsion/player/orplayer/g;",
        "Lcom/transsion/ninegridview/preview/r;",
        "mPageChange",
        "Lcom/transsion/ninegridview/preview/r;",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "pageFrom",
        "Ljava/lang/String;",
        "postId",
        "com/transsion/ninegridview/preview/GifImagePreviewActivity$g",
        "mOnPageChangeCallback",
        "Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final ANIMATE_DURATION:I = 0xc8

.field public static final CURRENT_ITEM:Ljava/lang/String; = "CURRENT_ITEM"

.field public static final Companion:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;

.field public static final IMAGE_LIST:Ljava/lang/String; = "image_list"

.field public static final IS_BUILTIN:Ljava/lang/String; = "IS_BUILTIN"

.field private static final PAGE_NAME:Ljava/lang/String; = "gif_image_preview"

.field public static final PICTURE_SAVE:Ljava/lang/String; = "oneroom"

.field public static final PLAY_GIF_AGAIN:I = 0x66

.field public static final POST_ID:Ljava/lang/String; = "POST_ID"

.field public static final REQUEST_PERMISSION_SETTING:I = 0x65


# instance fields
.field private final REQUEST_PERMISSION_STORAGE:I

.field private currentItemIndex:I

.field private final handler:Landroid/os/Handler;

.field private imageHeight:I

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imagePreviewAdapter:Lcom/transsion/ninegridview/preview/c;

.field private imageWidth:I

.field private isBuiltInApp:Ljava/lang/Boolean;

.field private final mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

.field private mPageChange:Lcom/transsion/ninegridview/preview/r;

.field private mPlayer:Lcom/transsion/player/orplayer/g;

.field private pageFrom:Ljava/lang/String;

.field private postId:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->REQUEST_PERMISSION_STORAGE:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->isBuiltInApp:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getImageList$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getItemView(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->getItemView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPageChange$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)Lcom/transsion/ninegridview/preview/r;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPageChange:Lcom/transsion/ninegridview/preview/r;

    return-object p0
.end method

.method public static final synthetic access$saveToAlbum(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->saveToAlbum(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setCurrentItemIndex$p(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    return-void
.end method

.method public static final synthetic access$showPageIndex(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->showPageIndex()V

    return-void
.end method

.method private final addIntoListener(Landroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$b;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private final addOutListener(Landroid/animation/ValueAnimator;)V
    .locals 1

    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$c;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

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
    iget v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v3, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenWidth:I

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

    iput v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageHeight:I

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageWidth:I

    return-void
.end method

.method private final downloadImage()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    if-ltz v1, :cond_3

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/Image;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;

    invoke-direct {v2, p0, v0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$d;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Lcom/transsion/moviedetailapi/bean/Image;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    :cond_3
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->initView$lambda$3(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getItemView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lon/a;

    iget-object v0, v0, Lon/a;->g:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "[?]"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    aget-object v4, p1, v1

    const-string p1, "/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v2, p1

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    if-nez v1, :cond_3

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-object p1, p1, v0

    return-object p1

    :cond_3
    return-object v0
.end method

.method private final initPlayer()V
    .locals 3

    new-instance v0, Lcom/transsion/player/ui/ORPlayerView;

    sget-object v1, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    invoke-direct {v0, p0, v1}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    new-instance v1, Lcom/transsion/player/orplayer/g$a;

    invoke-direct {v1, p0}, Lcom/transsion/player/orplayer/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/g$a;->a()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    sget-object v2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    new-instance v2, Lcom/transsion/ninegridview/preview/r;

    invoke-direct {v2, v1, v0}, Lcom/transsion/ninegridview/preview/r;-><init>(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    iput-object v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPageChange:Lcom/transsion/ninegridview/preview/r;

    new-instance v0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$f;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$f;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/g;

    return-void
.end method

.method private final initView()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenWidth:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->screenHeight:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_BUILTIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->isBuiltInApp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "POST_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->postId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_ITEM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    new-instance v0, Lcom/transsion/ninegridview/preview/c;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/preview/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/ninegridview/preview/c;->h(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->isBuiltInApp:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transsion/ninegridview/preview/c;->g(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/c;

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lon/a;

    iget-object v0, v0, Lon/a;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imagePreviewAdapter:Lcom/transsion/ninegridview/preview/c;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->startEnterTheAnimation()V

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->showPageIndex()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lon/a;

    iget-object v0, v0, Lon/a;->b:Landroid/view/View;

    new-instance v1, Lcom/transsion/ninegridview/preview/a;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/a;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->postId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "post_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->initPlayer()V

    return-void
.end method

.method private static final initView$lambda$3(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;Landroid/view/View;)V
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->requestPermission()V

    :goto_0
    const-string p1, "module_name"

    const-string v0, "save_picture"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->pageFrom:Ljava/lang/String;

    const-string v1, "page_from"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->postId:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "post_id"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lhj/i;->a:Lhj/i;

    const-string v0, "gif_image_preview"

    invoke-virtual {p0, v0, p1}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final requestPermission()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->REQUEST_PERMISSION_STORAGE:I

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private final saveToAlbum(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oneroom"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/ninegridview/R$string;->has_been_saved:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    sget-object v0, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v4, "oneroom"

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Lcom/transsion/ninegridview/helper/FileHelper;->g(Lcom/transsion/ninegridview/helper/FileHelper;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final showPageIndex()V
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lon/a;

    iget-object v1, v1, Lon/a;->e:Landroid/widget/TextView;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget v2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->currentItemIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->imageList:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v4, v5, v3

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d/%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    new-instance v1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$h;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lon/a;

    iget-object v1, v1, Lon/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final evaluateArgb(FII)I
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

.method public final evaluateFloat(FLjava/lang/Number;Ljava/lang/Number;)F
    .locals 1

    const-string v0, "startValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    return p2
.end method

.method public final evaluateInt(FII)I
    .locals 1

    int-to-float v0, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public final finishActivityAnim()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$e;-><init>(Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lon/a;

    iget-object v1, v1, Lon/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->getViewBinding()Lon/a;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lon/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lon/a;->c(Landroid/view/LayoutInflater;)Lon/a;

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

    const-string v3, "gif_image_preview"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->finishActivityAnim()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->pageFrom:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lon/a;

    iget-object v0, v0, Lon/a;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mOnPageChangeCallback:Lcom/transsion/ninegridview/preview/GifImagePreviewActivity$g;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget p2, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->REQUEST_PERMISSION_STORAGE:I

    if-ne p1, p2, :cond_1

    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->downloadImage()V

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->showSettingDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/GifImagePreviewActivity;->mPlayer:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    const/16 v0, 0x65

    invoke-virtual {p1, p0, v0}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    return-void
.end method
