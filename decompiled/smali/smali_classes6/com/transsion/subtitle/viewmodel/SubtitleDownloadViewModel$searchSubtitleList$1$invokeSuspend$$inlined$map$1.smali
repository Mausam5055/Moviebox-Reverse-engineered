.class public final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/b;

.field final synthetic b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

.field final synthetic c:Lcom/transsion/subtitle/fragment/i;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/b;

    iput-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    iput-object p3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->c:Lcom/transsion/subtitle/fragment/i;

    iput-object p4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->f:Ljava/lang/String;

    iput p7, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/b;

    new-instance v9, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2;

    iget-object v3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->b:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    iget-object v4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->c:Lcom/transsion/subtitle/fragment/i;

    iget-object v5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v7, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->f:Ljava/lang/String;

    iget v8, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;->g:I

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/c;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;I)V

    invoke-interface {v0, v9, p2}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
