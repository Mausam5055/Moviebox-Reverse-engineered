.class public final synthetic Lm6/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm6/c;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroidx/recyclerview/widget/DiffUtil$d;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lm6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/b;->a:Lm6/c;

    iput p2, p0, Lm6/b;->b:I

    iput-object p3, p0, Lm6/b;->c:Ljava/util/List;

    iput-object p4, p0, Lm6/b;->d:Landroidx/recyclerview/widget/DiffUtil$d;

    iput-object p5, p0, Lm6/b;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lm6/b;->a:Lm6/c;

    iget v1, p0, Lm6/b;->b:I

    iget-object v2, p0, Lm6/b;->c:Ljava/util/List;

    iget-object v3, p0, Lm6/b;->d:Landroidx/recyclerview/widget/DiffUtil$d;

    iget-object v4, p0, Lm6/b;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lm6/c;->b(Lm6/c;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$d;Ljava/lang/Runnable;)V

    return-void
.end method
