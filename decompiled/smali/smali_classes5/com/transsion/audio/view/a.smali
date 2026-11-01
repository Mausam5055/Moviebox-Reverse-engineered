.class public final synthetic Lcom/transsion/audio/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/view/EnFloatingView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/view/EnFloatingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/view/a;->a:Lcom/transsion/audio/view/EnFloatingView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/view/a;->a:Lcom/transsion/audio/view/EnFloatingView;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/audio/view/EnFloatingView;->k(Lcom/transsion/audio/view/EnFloatingView;Ljava/util/List;)V

    return-void
.end method
