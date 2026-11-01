.class public final synthetic Lcom/transsion/subtitle/fragment/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/c0;->a:Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/c0;->a:Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;

    check-cast p1, Leu/a;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Leu/a;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
