.class public final synthetic Lcom/transsion/player/longvideo/intercept/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/intercept/c;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/intercept/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/a;->a:Lcom/transsion/player/longvideo/intercept/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/a;->a:Lcom/transsion/player/longvideo/intercept/c;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/c;->b(Lcom/transsion/player/longvideo/intercept/c;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
