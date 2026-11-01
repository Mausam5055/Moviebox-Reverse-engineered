.class public final Lcom/transsion/subtitle/VideoSubtitleControl$a;
.super Ljava/lang/Object;

# interfaces
.implements Li5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleControl;->K(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->g(Lcom/transsion/subtitle/VideoSubtitleControl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->o(Lcom/transsion/subtitle/VideoSubtitleControl;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->L()Z

    move-result v0

    return v0
.end method
