.class public final synthetic Lfx/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfx/h;


# direct methods
.method public synthetic constructor <init>(Lfx/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx/f;->a:Lfx/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lfx/f;->a:Lfx/h;

    invoke-static {v0, p1}, Lfx/h;->i(Lfx/h;Landroid/view/View;)V

    return-void
.end method
