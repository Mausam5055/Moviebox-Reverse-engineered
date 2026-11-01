.class public final synthetic Ly1/c0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly1/s1;


# direct methods
.method public synthetic constructor <init>(Ly1/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/c0;->a:Ly1/s1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly1/c0;->a:Ly1/s1;

    invoke-static {v0}, Ly1/s1;->v0(Ly1/s1;)V

    return-void
.end method
