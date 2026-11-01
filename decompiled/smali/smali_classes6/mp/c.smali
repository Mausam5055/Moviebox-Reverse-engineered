.class public final synthetic Lmp/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lmp/d;


# direct methods
.method public synthetic constructor <init>(Lmp/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmp/c;->a:Lmp/d;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lmp/c;->a:Lmp/d;

    invoke-static {v0, p1}, Lmp/d;->a(Lmp/d;Landroid/media/MediaPlayer;)V

    return-void
.end method
