.class public final synthetic Lcom/transsion/subtitle/fragment/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/j;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/j;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;

    check-cast p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;->r0(Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;Lcom/transsion/subtitle/bean/SubtitleSearchListBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
