.class public final synthetic Lcom/transsion/web/fragment/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/fragment/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/fragment/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/web/fragment/WebFragmentV2$addJsInterface$2$1;->x(Ljava/lang/String;)V

    return-void
.end method
