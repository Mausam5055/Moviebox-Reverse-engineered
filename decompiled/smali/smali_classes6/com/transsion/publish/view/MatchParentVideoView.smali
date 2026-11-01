.class public Lcom/transsion/publish/view/MatchParentVideoView;
.super Landroid/widget/VideoView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/view/MatchParentVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/publish/view/MatchParentVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/publish/view/MatchParentVideoView;->a:I

    iput p1, p0, Lcom/transsion/publish/view/MatchParentVideoView;->b:I

    iput p1, p0, Lcom/transsion/publish/view/MatchParentVideoView;->c:I

    iput p1, p0, Lcom/transsion/publish/view/MatchParentVideoView;->d:I

    iput p1, p0, Lcom/transsion/publish/view/MatchParentVideoView;->e:I

    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/MatchParentVideoView;->b:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/view/MatchParentVideoView;->a:I

    return v0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method
