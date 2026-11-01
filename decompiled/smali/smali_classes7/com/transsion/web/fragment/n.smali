.class public final synthetic Lcom/transsion/web/fragment/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/web/fragment/WebFragmentV2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/fragment/WebFragmentV2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/fragment/n;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/fragment/n;->a:Lcom/transsion/web/fragment/WebFragmentV2;

    invoke-static {v0}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;->u(Lcom/transsion/web/fragment/WebFragmentV2;)V

    return-void
.end method
