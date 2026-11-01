.class public final synthetic Lcom/transsion/room/sub/adapter/subscription/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/sub/adapter/subscription/s$b;

.field public final synthetic b:Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/u;->a:Lcom/transsion/room/sub/adapter/subscription/s$b;

    iput-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/u;->b:Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/sub/adapter/subscription/u;->a:Lcom/transsion/room/sub/adapter/subscription/s$b;

    iget-object v1, p0, Lcom/transsion/room/sub/adapter/subscription/u;->b:Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;

    invoke-static {v0, v1, p1}, Lcom/transsion/room/sub/adapter/subscription/s$b;->z(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V

    return-void
.end method
