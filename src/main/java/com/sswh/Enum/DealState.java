package com.sswh.Enum;

/**
 * 事件处理状态
 *
 * @author nuanfeng
 * @date 2020/8/6 22:49
 */
public enum DealState {
    FINISHED(1), UNFINISHED(2);
    private final int state;

    DealState(int code) {
        this.state = code;
    }

    public int getDealStateCode() {
        return state;
    }
}