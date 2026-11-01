.class public final synthetic Lgu/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

.field public final synthetic b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu/c;->a:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    iput-object p2, p0, Lgu/c;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgu/c;->a:Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;

    iget-object v1, p0, Lgu/c;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;->n0(Lcom/transsion/subtitle/dialog/SubtitleMainDialog2;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
