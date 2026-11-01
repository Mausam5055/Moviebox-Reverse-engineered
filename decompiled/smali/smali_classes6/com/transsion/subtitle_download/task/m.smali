.class public final synthetic Lcom/transsion/subtitle_download/task/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle_download/task/p;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle_download/task/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle_download/task/m;->a:Lcom/transsion/subtitle_download/task/p;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle_download/task/m;->a:Lcom/transsion/subtitle_download/task/p;

    invoke-static {v0}, Lcom/transsion/subtitle_download/task/p;->b(Lcom/transsion/subtitle_download/task/p;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
