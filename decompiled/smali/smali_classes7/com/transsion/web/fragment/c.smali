.class public final synthetic Lcom/transsion/web/fragment/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/web/fragment/WebFragmentV2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/fragment/WebFragmentV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/fragment/c;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/fragment/c;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-static {v0}, Lcom/transsion/web/fragment/WebFragmentV2;->d1(Lcom/transsion/web/fragment/WebFragmentV2;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
