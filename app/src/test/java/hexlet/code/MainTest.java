package hexlet.code;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MainTest {

    @Test
    void isEven() {

        assertEquals(Main.isEven(1), false);
    }
}