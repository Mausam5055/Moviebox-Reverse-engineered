.class public final synthetic Lwo/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

.field public final synthetic b:Lcom/transsnet/loginapi/bean/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo/f;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    iput-object p2, p0, Lwo/f;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwo/f;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    iget-object v1, p0, Lwo/f;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->c0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method
