.class public final synthetic Lz8/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:Lz8/o;


# direct methods
.method public synthetic constructor <init>(Lz8/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/l;->a:Lz8/o;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/l;->a:Lz8/o;

    invoke-static {v0}, Lz8/o;->c(Lz8/o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
