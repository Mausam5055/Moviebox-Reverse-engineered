.class public final synthetic Lrb/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lrb/o;


# direct methods
.method public synthetic constructor <init>(Lrb/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/m;->a:Lrb/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrb/m;->a:Lrb/o;

    invoke-static {v0}, Lrb/o;->a(Lrb/o;)V

    return-void
.end method
