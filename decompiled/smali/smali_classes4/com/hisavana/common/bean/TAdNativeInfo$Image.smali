.class public abstract Lcom/hisavana/common/bean/TAdNativeInfo$Image;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Image"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canUse()Z
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getRatio()F
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isCached()Z
.end method

.method public abstract release()V
.end method

.method public abstract setDrawable(Landroid/graphics/drawable/Drawable;)V
.end method
