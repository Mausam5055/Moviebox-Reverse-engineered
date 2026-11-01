.class public final synthetic Lcom/transsion/usercenter/setting/dev/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/setting/dev/DevFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/setting/dev/DevFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/dev/b;->a:Lcom/transsion/usercenter/setting/dev/DevFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/dev/b;->a:Lcom/transsion/usercenter/setting/dev/DevFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/setting/dev/DevFragment;->P0(Lcom/transsion/usercenter/setting/dev/DevFragment;)V

    return-void
.end method
