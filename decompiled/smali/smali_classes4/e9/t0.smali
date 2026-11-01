.class public final synthetic Le9/t0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le9/c$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/t0;->a:Le9/c$a;

    iput p2, p0, Le9/t0;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le9/t0;->a:Le9/c$a;

    iget v1, p0, Le9/t0;->b:I

    check-cast p1, Le9/c;

    invoke-static {v0, v1, p1}, Le9/p1;->S(Le9/c$a;ILe9/c;)V

    return-void
.end method
