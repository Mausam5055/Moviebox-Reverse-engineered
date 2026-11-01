.class public Lcom/transsion/transfer/androidasync/w;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/w$l;,
        Lcom/transsion/transfer/androidasync/w$j;,
        Lcom/transsion/transfer/androidasync/w$i;,
        Lcom/transsion/transfer/androidasync/w$k;
    }
.end annotation


# static fields
.field static n:Ljava/util/Hashtable;


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/w$l;

.field private b:Lcom/transsion/transfer/androidasync/w$l;

.field private c:Lcom/transsion/transfer/androidasync/w$l;

.field private d:Lcom/transsion/transfer/androidasync/w$l;

.field private e:Lcom/transsion/transfer/androidasync/w$l;

.field private f:Lcom/transsion/transfer/androidasync/w$j;

.field private g:Lcom/transsion/transfer/androidasync/w$j;

.field private h:Lcom/transsion/transfer/androidasync/w$j;

.field i:Lcom/transsion/transfer/androidasync/p;

.field private j:Ljava/util/LinkedList;

.field private k:Ljava/util/ArrayList;

.field l:Ljava/nio/ByteOrder;

.field m:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/transsion/transfer/androidasync/w;->n:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/w$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$a;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->a:Lcom/transsion/transfer/androidasync/w$l;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$b;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->b:Lcom/transsion/transfer/androidasync/w$l;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$c;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->c:Lcom/transsion/transfer/androidasync/w$l;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$d;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$d;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->d:Lcom/transsion/transfer/androidasync/w$l;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$e;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$e;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->e:Lcom/transsion/transfer/androidasync/w$l;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$f;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/w$f;-><init>(Lcom/transsion/transfer/androidasync/w;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->f:Lcom/transsion/transfer/androidasync/w$j;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$g;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/w$g;-><init>(Lcom/transsion/transfer/androidasync/w;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->g:Lcom/transsion/transfer/androidasync/w$j;

    new-instance v0, Lcom/transsion/transfer/androidasync/w$h;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/w$h;-><init>(Lcom/transsion/transfer/androidasync/w;)V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->h:Lcom/transsion/transfer/androidasync/w$j;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->k:Ljava/util/ArrayList;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->l:Ljava/nio/ByteOrder;

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/w;->i:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {p1, p0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/transfer/androidasync/w;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/w;->k:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/w$l;

    iget v1, v1, Lcom/transsion/transfer/androidasync/w$l;->a:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->l:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->u(Ljava/nio/ByteOrder;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/w$l;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/androidasync/w$l;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_2
    return-void
.end method

.method public b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/transsion/transfer/androidasync/w$i;

    invoke-direct {v1, p1, p2}, Lcom/transsion/transfer/androidasync/w$i;-><init>(ILcom/transsion/transfer/androidasync/w$j;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(BLbv/d;)Lcom/transsion/transfer/androidasync/w;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/transsion/transfer/androidasync/w$k;

    invoke-direct {v1, p1, p2}, Lcom/transsion/transfer/androidasync/w$k;-><init>(BLbv/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
