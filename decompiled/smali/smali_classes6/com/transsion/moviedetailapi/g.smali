.class public abstract Lcom/transsion/moviedetailapi/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/Integer;)I
    .locals 2

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_audio:I

    goto/16 :goto_8

    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_music:I

    goto/16 :goto_8

    :cond_3
    :goto_1
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_5

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_tv:I

    goto :goto_8

    :cond_5
    :goto_2
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_7

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_short_tv:I

    goto :goto_8

    :cond_7
    :goto_3
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_9

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_edu:I

    goto :goto_8

    :cond_9
    :goto_4
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SPORT:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_b

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_sport:I

    goto :goto_8

    :cond_b
    :goto_5
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_d

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_movie:I

    goto :goto_8

    :cond_d
    :goto_6
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->OUTSIDE_FILE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_f

    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_local_file:I

    goto :goto_8

    :cond_f
    :goto_7
    sget p0, Lcom/transsion/baseui/R$drawable;->ic_tag_video_def:I

    :goto_8
    return p0
.end method
