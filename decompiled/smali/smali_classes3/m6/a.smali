.class public final synthetic Lm6/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm6/c;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lm6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/a;->a:Lm6/c;

    iput-object p2, p0, Lm6/a;->b:Ljava/util/List;

    iput-object p3, p0, Lm6/a;->c:Ljava/util/List;

    iput p4, p0, Lm6/a;->d:I

    iput-object p5, p0, Lm6/a;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lm6/a;->a:Lm6/c;

    iget-object v1, p0, Lm6/a;->b:Ljava/util/List;

    iget-object v2, p0, Lm6/a;->c:Ljava/util/List;

    iget v3, p0, Lm6/a;->d:I

    iget-object v4, p0, Lm6/a;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lm6/c;->a(Lm6/c;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    return-void
.end method
