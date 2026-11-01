.class public final synthetic Lcom/transsion/room/fragment/b2;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/room/adapter/a;

.field public final synthetic b:Lcom/transsion/room/fragment/RoomsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/adapter/a;Lcom/transsion/room/fragment/RoomsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/fragment/b2;->a:Lcom/transsion/room/adapter/a;

    iput-object p2, p0, Lcom/transsion/room/fragment/b2;->b:Lcom/transsion/room/fragment/RoomsFragment;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/fragment/b2;->a:Lcom/transsion/room/adapter/a;

    iget-object v1, p0, Lcom/transsion/room/fragment/b2;->b:Lcom/transsion/room/fragment/RoomsFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/room/fragment/RoomsFragment;->O0(Lcom/transsion/room/adapter/a;Lcom/transsion/room/fragment/RoomsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
