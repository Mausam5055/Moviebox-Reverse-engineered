.class public Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;
.super Lcom/transsion/transfer/androidasync/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field j:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->j:Lcom/transsion/transfer/androidasync/ByteBufferList;

    return-void
.end method

.method private O(CC)Z
    .locals 2

    if-eq p1, p2, :cond_0

    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " was expected, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private P(C)Z
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->O(CC)Z

    move-result p1

    return p1
.end method

.method private Q(C)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->O(CC)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    return-void

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p1

    if-lez p1, :cond_b

    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$a;->a:[I

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->Q(C)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    if-lez p1, :cond_2

    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V

    :goto_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->P(C)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p1

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    if-nez v0, :cond_4

    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->j:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p2, v0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->j:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->Q(C)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->m()C

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    const/16 v1, 0x61

    if-lt p1, v1, :cond_8

    const/16 v1, 0x66

    if-gt p1, v1, :cond_8

    add-int/lit8 p1, p1, -0x57

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    goto :goto_2

    :cond_8
    const/16 v1, 0x30

    if-lt p1, v1, :cond_9

    const/16 v1, 0x39

    if-gt p1, v1, :cond_9

    add-int/lit8 p1, p1, -0x30

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    goto :goto_2

    :cond_9
    const/16 v1, 0x41

    if-lt p1, v1, :cond_a

    const/16 v1, 0x46

    if-gt p1, v1, :cond_a

    add-int/lit8 p1, p1, -0x37

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    :goto_2
    iget p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->g:I

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->h:I

    goto/16 :goto_0

    :cond_a
    new-instance p2, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid chunk length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->M(Ljava/lang/Exception;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;->i:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    if-eq v0, v1, :cond_0

    new-instance p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void
.end method
