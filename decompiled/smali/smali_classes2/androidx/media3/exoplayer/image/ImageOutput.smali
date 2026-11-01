.class public interface abstract Landroidx/media3/exoplayer/image/ImageOutput;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/media3/exoplayer/image/ImageOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/image/ImageOutput$a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/image/ImageOutput$a;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract onImageAvailable(JLandroid/graphics/Bitmap;)V
.end method
