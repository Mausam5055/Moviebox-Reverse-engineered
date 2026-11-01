.class public final synthetic Lcom/transsion/search/fragment/group/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/group/f;->a:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    check-cast p1, Lcom/transsion/search/bean/SearchGroupEntity;

    invoke-static {v0, p1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;->r0(Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;Lcom/transsion/search/bean/SearchGroupEntity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
