module top_module (
    // 7458 칩을 구현하기 위한 입력과 출력
    input  p1a, p1b, p1c, p1d, p1e, p1f,   // 첫 번째 그룹 입력 (총 6개)
    output p1y,                            // 첫 번째 OR 게이트 출력
    input  p2a, p2b, p2c, p2d,             // 두 번째 그룹 입력 (총 4개)
    output p2y                             // 두 번째 OR 게이트 출력
);

    // 중간 결과 저장을 위한 wire 선언
    wire and_result1, and_result2;
    wire and_result3, and_result4;

    // 첫 번째 그룹의 AND 연산 (p1a, p1b, p1c -> 첫 번째 AND)
    assign and_result1 = p1a & p1b & p1c;
    // 두 번째 그룹의 AND 연산 (p1d, p1e, p1f -> 두 번째 AND)
    assign and_result2 = p1d & p1e & p1f;
    // 세 번째 그룹의 AND 연산 (p2a, p2b -> 세 번째 AND)
    assign and_result3 = p2a & p2b;
    // 네 번째 그룹의 AND 연산 (p2c, p2d -> 네 번째 AND)
    assign and_result4 = p2c & p2d;

    // 첫 번째 OR 게이트 (and_result1 또는 and_result2가 참이면 p1y 출력)
    assign p1y = and_result1 | and_result2;
    // 두 번째 OR 게이트 (and_result3 또는 and_result4가 참이면 p2y 출력)
    assign p2y = and_result3 | and_result4;

endmodule
