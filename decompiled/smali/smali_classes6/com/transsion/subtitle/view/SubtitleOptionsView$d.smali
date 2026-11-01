.class public final Lcom/transsion/subtitle/view/SubtitleOptionsView$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/warkiz/widget/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/view/SubtitleOptionsView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/view/SubtitleOptionsView;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$d;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$d;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->access$setBackgroundOpacityStyle(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZ)V

    return-void
.end method

.method public c(Lcom/warkiz/widget/f;)V
    .locals 2

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/warkiz/widget/f;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$d;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->access$setBackgroundOpacityStyle(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZ)V

    return-void
.end method
