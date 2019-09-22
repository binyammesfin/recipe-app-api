from django.test import TestCase

from .calc import addnumbers, subnumbers

class CalcTests(TestCase):

    def test_my_add(self):
        self.assertEqual(addnumbers(2,4), 6)

    def test_my_subtract (self):
        self.assertEqual(subnumbers(7,4), 3)