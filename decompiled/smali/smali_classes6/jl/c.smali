.class public final synthetic Ljl/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/bottom/BottomOpFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljl/c;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    iput p2, p0, Ljl/c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljl/c;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    iget v1, p0, Ljl/c;->b:I

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a(Lcom/transsion/home/fragment/bottom/BottomOpFragment;I)V

    return-void
.end method
