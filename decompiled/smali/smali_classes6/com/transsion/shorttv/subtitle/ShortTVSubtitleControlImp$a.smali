.class public final Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;
.super Ljava/lang/Object;

# interfaces
.implements Li5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->z(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->o(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->p(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$a;->a:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v0}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->n(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Z

    move-result v0

    return v0
.end method
