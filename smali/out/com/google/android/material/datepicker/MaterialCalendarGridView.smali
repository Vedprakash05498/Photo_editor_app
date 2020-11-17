.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 53
    sget v0, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    .line 54
    sget v0, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    .line 56
    :cond_1d
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 67
    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 192
    const/16 v0, 0x21

    if-ne p1, v0, :cond_10

    .line 193
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_24

    .line 194
    :cond_10
    const/16 v0, 0x82

    if-ne p1, v0, :cond_20

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_24

    .line 197
    :cond_20
    const/4 v0, 0x1

    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 199
    :goto_24
    return-void
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .registers 10
    .param p0, "firstOfMonth"    # Ljava/lang/Long;
    .param p1, "lastOfMonth"    # Ljava/lang/Long;
    .param p2, "startDay"    # Ljava/lang/Long;
    .param p3, "endDay"    # Ljava/lang/Long;

    .line 206
    const/4 v0, 0x1

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    if-nez p3, :cond_a

    goto :goto_25

    .line 209
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_24

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :cond_24
    :goto_24
    return v0

    .line 207
    :cond_25
    :goto_25
    return v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .registers 2

    .line 104
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 71
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 121
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    .line 123
    .local v1, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 124
    .local v2, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 125
    .local v3, "calendarStyle":Lcom/google/android/material/datepicker/CalendarStyle;
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v4

    .line 126
    .local v4, "firstOfMonth":Ljava/lang/Long;
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v5

    .line 128
    .local v5, "lastOfMonth":Ljava/lang/Long;
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_183

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/util/Pair;

    .line 129
    .local v7, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v8, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v8, :cond_173

    iget-object v8, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v8, :cond_3a

    .line 130
    goto :goto_25

    .line 132
    :cond_3a
    iget-object v8, v7, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 133
    .local v8, "startItem":J
    iget-object v10, v7, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 135
    .local v10, "endItem":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v4, v5, v12, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 136
    return-void

    .line 141
    :cond_59
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v15, 0x5

    cmp-long v16, v8, v12

    if-gez v16, :cond_7b

    .line 142
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v12

    .line 143
    .local v12, "firstHighlightPosition":I
    nop

    .line 144
    invoke-virtual {v1, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    move-result v13

    if-eqz v13, :cond_6f

    const/4 v13, 0x0

    goto :goto_79

    :cond_6f
    add-int/lit8 v13, v12, -0x1

    .line 146
    invoke-virtual {v0, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    :goto_79
    nop

    .local v13, "rangeHighlightStart":I
    goto :goto_92

    .line 148
    .end local v12    # "firstHighlightPosition":I
    .end local v13    # "rangeHighlightStart":I
    :cond_7b
    iget-object v12, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v12, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    iget-object v12, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v12, v15}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v12

    .line 150
    .restart local v12    # "firstHighlightPosition":I
    invoke-virtual {v0, v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v13

    .line 155
    .restart local v13    # "rangeHighlightStart":I
    :goto_92
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v18, v10, v16

    if-lez v18, :cond_be

    .line 156
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildCount()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 157
    .local v14, "lastHighlightPosition":I
    nop

    .line 158
    invoke-virtual {v1, v14}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    move-result v15

    if-eqz v15, :cond_b4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v15

    goto :goto_bc

    .line 160
    :cond_b4
    invoke-virtual {v0, v14}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    :goto_bc
    nop

    .local v15, "rangeHighlightEnd":I
    goto :goto_d5

    .line 162
    .end local v14    # "lastHighlightPosition":I
    .end local v15    # "rangeHighlightEnd":I
    :cond_be
    iget-object v14, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v14, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 163
    iget-object v14, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v14

    .line 164
    .restart local v14    # "lastHighlightPosition":I
    invoke-virtual {v0, v14}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v15

    .line 167
    .restart local v15    # "rangeHighlightEnd":I
    :goto_d5
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .end local v4    # "firstOfMonth":Ljava/lang/Long;
    .end local v5    # "lastOfMonth":Ljava/lang/Long;
    .local v16, "firstOfMonth":Ljava/lang/Long;
    .local v18, "lastOfMonth":Ljava/lang/Long;
    invoke-virtual {v1, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v5, v4

    .line 168
    .local v5, "firstRow":I
    move-object v4, v6

    move-object/from16 v19, v7

    .end local v7    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v19, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v1, v14}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v6

    long-to-int v7, v6

    .line 169
    .local v7, "lastRow":I
    move v6, v5

    .local v6, "row":I
    :goto_e7
    if-gt v6, v7, :cond_161

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v20

    move-object/from16 v21, v1

    .end local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .local v21, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    mul-int v1, v6, v20

    .line 171
    .local v1, "firstPositionInRow":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v20

    add-int v20, v1, v20

    move-object/from16 v22, v2

    .end local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .local v22, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    add-int/lit8 v2, v20, -0x1

    .line 172
    .local v2, "lastPositionInRow":I
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 173
    .local v20, "firstView":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v23

    iget-object v0, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v0

    add-int v0, v23, v0

    .line 174
    .local v0, "top":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v24, v4

    iget-object v4, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v4

    sub-int v4, v23, v4

    .line 175
    .local v4, "bottom":I
    if-le v1, v12, :cond_11e

    const/16 v23, 0x0

    goto :goto_120

    :cond_11e
    move/from16 v23, v13

    :goto_120
    move/from16 v25, v23

    .line 176
    .local v25, "left":I
    if-le v14, v2, :cond_129

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v23

    goto :goto_12b

    :cond_129
    move/from16 v23, v15

    :goto_12b
    move/from16 v26, v23

    .line 177
    .local v26, "right":I
    move/from16 v23, v1

    move/from16 v1, v25

    move/from16 v25, v2

    .end local v2    # "lastPositionInRow":I
    .local v1, "left":I
    .local v23, "firstPositionInRow":I
    .local v25, "lastPositionInRow":I
    int-to-float v2, v1

    move/from16 v33, v1

    .end local v1    # "left":I
    .local v33, "left":I
    int-to-float v1, v0

    move/from16 v34, v0

    move/from16 v0, v26

    move/from16 v26, v5

    .end local v5    # "firstRow":I
    .local v0, "right":I
    .local v26, "firstRow":I
    .local v34, "top":I
    int-to-float v5, v0

    move/from16 v35, v0

    .end local v0    # "right":I
    .local v35, "right":I
    int-to-float v0, v4

    move/from16 v36, v4

    .end local v4    # "bottom":I
    .local v36, "bottom":I
    iget-object v4, v3, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v27, p1

    move/from16 v28, v2

    move/from16 v29, v1

    move/from16 v30, v5

    move/from16 v31, v0

    move-object/from16 v32, v4

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    .end local v20    # "firstView":Landroid/view/View;
    .end local v23    # "firstPositionInRow":I
    .end local v25    # "lastPositionInRow":I
    .end local v33    # "left":I
    .end local v34    # "top":I
    .end local v35    # "right":I
    .end local v36    # "bottom":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v24

    move/from16 v5, v26

    goto :goto_e7

    .end local v21    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v22    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .end local v26    # "firstRow":I
    .local v1, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .local v2, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .restart local v5    # "firstRow":I
    :cond_161
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move/from16 v26, v5

    .line 179
    .end local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .end local v5    # "firstRow":I
    .end local v6    # "row":I
    .end local v7    # "lastRow":I
    .end local v8    # "startItem":J
    .end local v10    # "endItem":J
    .end local v12    # "firstHighlightPosition":I
    .end local v13    # "rangeHighlightStart":I
    .end local v14    # "lastHighlightPosition":I
    .end local v15    # "rangeHighlightEnd":I
    .end local v19    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v21    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v22    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v24

    goto/16 :goto_25

    .line 129
    .end local v16    # "firstOfMonth":Ljava/lang/Long;
    .end local v18    # "lastOfMonth":Ljava/lang/Long;
    .end local v21    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v22    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .restart local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .local v4, "firstOfMonth":Ljava/lang/Long;
    .local v5, "lastOfMonth":Ljava/lang/Long;
    .local v7, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_173
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v24, v6

    move-object/from16 v19, v7

    .end local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .end local v4    # "firstOfMonth":Ljava/lang/Long;
    .end local v5    # "lastOfMonth":Ljava/lang/Long;
    .end local v7    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v16    # "firstOfMonth":Ljava/lang/Long;
    .restart local v18    # "lastOfMonth":Ljava/lang/Long;
    .restart local v19    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v21    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v22    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    move-object/from16 v0, p0

    goto/16 :goto_25

    .line 180
    .end local v16    # "firstOfMonth":Ljava/lang/Long;
    .end local v18    # "lastOfMonth":Ljava/lang/Long;
    .end local v19    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v21    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v22    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .restart local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .restart local v4    # "firstOfMonth":Ljava/lang/Long;
    .restart local v5    # "lastOfMonth":Ljava/lang/Long;
    :cond_183
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 184
    if-eqz p1, :cond_6

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    goto :goto_a

    .line 187
    :cond_6
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 189
    :goto_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 87
    .local v0, "result":Z
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 88
    return v1

    .line 90
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_30

    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v3

    if-lt v2, v3, :cond_1f

    goto :goto_30

    .line 94
    :cond_1f
    const/16 v2, 0x13

    if-ne v2, p1, :cond_2f

    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 96
    return v4

    .line 98
    :cond_2f
    return v1

    .line 92
    :cond_30
    :goto_30
    return v4
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 109
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_8

    .line 116
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    return-void

    .line 110
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 113
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 114
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 111
    const-string v2, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_19

    .line 80
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 82
    :goto_19
    return-void
.end method
